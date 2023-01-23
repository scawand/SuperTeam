import 'dart:ffi';

import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'carbi.g.dart';

enum MealType {
  breakfast,
  lunch,
  dinner,
  snack,
  dessert,
}

enum Status {
  unavailable,
  modified,
  deleted,
  available,
}

enum LogType {
  meal,
  exercice,
  glucoseReading,
  bgRecalibration,
  note,
}

enum GlucoseReadingType {
  manual,
  dexcom,
  freestyleLibre,
}

enum FoodSource {
  custom,
  nutritionCanada,
  openFoodFacts,
}

class SupportedLocales extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get locale => text().withLength(min: 1, max: 25)();
}

class TextContents extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get originalText => text().withLength(min: 1)();
  IntColumn get originalLocaleId =>
      integer().references(SupportedLocales, #id)();
}

class Translations extends Table {
  IntColumn get id => integer()();
  IntColumn get localeId => integer()();
  TextColumn get translation => text()();

  @override
  Set<Column> get primaryKey => {id, localeId};
}

class DailySheets extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get sheetDate => dateTime().withDefault(currentDateAndTime)();
}

class Logs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get type => intEnum<LogType>()();
  RealColumn get timeOffset =>
      real().check(timeOffset.isBetweenValues(0, 24))();
  IntColumn get dailySheetId => integer().references(DailySheets, #id)();
}

class GlucoseReadings extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get value => integer().check(value.isBiggerThanValue(0))();
  IntColumn get type => intEnum<GlucoseReadingType>()
      .withDefault(Constant(GlucoseReadingType.manual.index))();
  IntColumn get logId => integer().references(Logs, #id)();
}

class Foods extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get brand => text().withLength(min: 1, max: 60).nullable()();
  IntColumn get sourceId => integer().nullable()();
  IntColumn get sourceType =>
      intEnum<FoodSource>().withDefault(Constant(FoodSource.custom.index))();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  IntColumn get nameId => integer().references(TextContents, #id)();
}

class Units extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get nameId => integer().references(TextContents, #id)();
}

class FoodUnits extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get status =>
      intEnum<Status>().withDefault(Constant(Status.available.index))();
  RealColumn get carb => real().check(carb.isBiggerOrEqualValue(0))();
  RealColumn get fiber =>
      real().check(fiber.isBiggerOrEqualValue(0)).nullable()();
  RealColumn get protein =>
      real().check(fiber.isBiggerOrEqualValue(0)).nullable()();
  RealColumn get fat =>
      real().check(fiber.isBiggerOrEqualValue(0)).nullable()();
  RealColumn get quantity => real()
      .withDefault(const Constant(1))
      .check(quantity.isBiggerOrEqualValue(0))();
  RealColumn get volume =>
      real().check(volume.isBiggerOrEqualValue(0)).nullable()();
  RealColumn get weight =>
      real().check(volume.isBiggerOrEqualValue(0)).nullable()();
  IntColumn get foodId => integer().references(Foods, #id)();
  IntColumn get unitId => integer().references(Units, #id)();
}

class Tags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get nameId => integer().references(TextContents, #id)();
}

class FoodTags extends Table {
  IntColumn get tagId => integer()();
  IntColumn get foodId => integer()();
}

class InsulinPresets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get status =>
      intEnum<Status>().withDefault(Constant(Status.available.index))();
  RealColumn get breakfastRatio =>
      real().check(breakfastRatio.isBiggerThanValue(0))();
  RealColumn get lunchRatio => real().check(lunchRatio.isBiggerThanValue(0))();
  RealColumn get dinnerRatio =>
      real().check(dinnerRatio.isBiggerThanValue(0))();
  RealColumn get eveningRatio =>
      real().check(eveningRatio.isBiggerThanValue(0))();
  RealColumn get passiveInsulin =>
      real().check(passiveInsulin.isBiggerOrEqualValue(0)).nullable()();
}

class Meals extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get netCarb => real()
      .check(netCarb.isBiggerOrEqualValue(0))
      .withDefault(const Constant(0))();
  RealColumn get bolusCorrection =>
      real().check(bolusCorrection.isBiggerOrEqualValue(0)).nullable()();
  RealColumn get bolusTotal =>
      real().check(bolusTotal.isBiggerOrEqualValue(0)).nullable()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  IntColumn get type => intEnum<MealType>()();
  IntColumn get logId => integer().references(Logs, #id)();
  IntColumn get glucoseReadingId =>
      integer().references(GlucoseReadings, #id).nullable()();
  IntColumn get insulinPresetId =>
      integer().references(InsulinPresets, #id).nullable()();
}

class MealItems extends Table {
  IntColumn get mealId => integer().references(Meals, #id)();
  RealColumn get quantity => real().check(quantity.isBiggerThanValue(0))();
  IntColumn get foodUnitId => integer().references(FoodUnits, #id)();
}

@DriftDatabase(tables: [
  SupportedLocales,
  TextContents,
  Translations,
  DailySheets,
  Logs,
  GlucoseReadings,
  Foods,
  Units,
  FoodUnits,
  Tags,
  FoodTags,
  InsulinPresets,
  Meals,
  MealItems,
])
class CarbiDb extends _$CarbiDb {
  // we tell the database where to store the data with this constructor
  CarbiDb() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
