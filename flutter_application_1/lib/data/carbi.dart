import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'carbi.g.dart';

class SupportedLocales extends Table {
  IntColumn get localeId => integer().autoIncrement()();
  TextColumn get locale => text().withLength(min: 1, max: 25)();
}

class TextContents extends Table {
  IntColumn get textContentId => integer().autoIncrement()();
}
