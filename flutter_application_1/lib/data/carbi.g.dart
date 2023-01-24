// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carbi.dart';

// ignore_for_file: type=lint
class $SupportedLocalesTable extends SupportedLocales
    with TableInfo<$SupportedLocalesTable, SupportedLocale> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupportedLocalesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumn<String> locale = GeneratedColumn<String>(
      'locale', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 25),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, locale];
  @override
  String get aliasedName => _alias ?? 'supported_locales';
  @override
  String get actualTableName => 'supported_locales';
  @override
  VerificationContext validateIntegrity(Insertable<SupportedLocale> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('locale')) {
      context.handle(_localeMeta,
          locale.isAcceptableOrUnknown(data['locale']!, _localeMeta));
    } else if (isInserting) {
      context.missing(_localeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupportedLocale map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SupportedLocale(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      locale: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}locale'])!,
    );
  }

  @override
  $SupportedLocalesTable createAlias(String alias) {
    return $SupportedLocalesTable(attachedDatabase, alias);
  }
}

class SupportedLocale extends DataClass implements Insertable<SupportedLocale> {
  final int id;
  final String locale;
  const SupportedLocale({required this.id, required this.locale});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['locale'] = Variable<String>(locale);
    return map;
  }

  SupportedLocalesCompanion toCompanion(bool nullToAbsent) {
    return SupportedLocalesCompanion(
      id: Value(id),
      locale: Value(locale),
    );
  }

  factory SupportedLocale.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupportedLocale(
      id: serializer.fromJson<int>(json['id']),
      locale: serializer.fromJson<String>(json['locale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'locale': serializer.toJson<String>(locale),
    };
  }

  SupportedLocale copyWith({int? id, String? locale}) => SupportedLocale(
        id: id ?? this.id,
        locale: locale ?? this.locale,
      );
  @override
  String toString() {
    return (StringBuffer('SupportedLocale(')
          ..write('id: $id, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, locale);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupportedLocale &&
          other.id == this.id &&
          other.locale == this.locale);
}

class SupportedLocalesCompanion extends UpdateCompanion<SupportedLocale> {
  final Value<int> id;
  final Value<String> locale;
  const SupportedLocalesCompanion({
    this.id = const Value.absent(),
    this.locale = const Value.absent(),
  });
  SupportedLocalesCompanion.insert({
    this.id = const Value.absent(),
    required String locale,
  }) : locale = Value(locale);
  static Insertable<SupportedLocale> custom({
    Expression<int>? id,
    Expression<String>? locale,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (locale != null) 'locale': locale,
    });
  }

  SupportedLocalesCompanion copyWith({Value<int>? id, Value<String>? locale}) {
    return SupportedLocalesCompanion(
      id: id ?? this.id,
      locale: locale ?? this.locale,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String>(locale.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupportedLocalesCompanion(')
          ..write('id: $id, ')
          ..write('locale: $locale')
          ..write(')'))
        .toString();
  }
}

class $TextContentsTable extends TextContents
    with TableInfo<$TextContentsTable, TextContent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TextContentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _originalTextMeta =
      const VerificationMeta('originalText');
  @override
  late final GeneratedColumn<String> originalText =
      GeneratedColumn<String>('original_text', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _originalLocaleIdMeta =
      const VerificationMeta('originalLocaleId');
  @override
  late final GeneratedColumn<int> originalLocaleId = GeneratedColumn<int>(
      'original_locale_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES supported_locales (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, originalText, originalLocaleId];
  @override
  String get aliasedName => _alias ?? 'text_contents';
  @override
  String get actualTableName => 'text_contents';
  @override
  VerificationContext validateIntegrity(Insertable<TextContent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('original_text')) {
      context.handle(
          _originalTextMeta,
          originalText.isAcceptableOrUnknown(
              data['original_text']!, _originalTextMeta));
    } else if (isInserting) {
      context.missing(_originalTextMeta);
    }
    if (data.containsKey('original_locale_id')) {
      context.handle(
          _originalLocaleIdMeta,
          originalLocaleId.isAcceptableOrUnknown(
              data['original_locale_id']!, _originalLocaleIdMeta));
    } else if (isInserting) {
      context.missing(_originalLocaleIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TextContent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TextContent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      originalText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_text'])!,
      originalLocaleId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}original_locale_id'])!,
    );
  }

  @override
  $TextContentsTable createAlias(String alias) {
    return $TextContentsTable(attachedDatabase, alias);
  }
}

class TextContent extends DataClass implements Insertable<TextContent> {
  final int id;
  final String originalText;
  final int originalLocaleId;
  const TextContent(
      {required this.id,
      required this.originalText,
      required this.originalLocaleId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['original_text'] = Variable<String>(originalText);
    map['original_locale_id'] = Variable<int>(originalLocaleId);
    return map;
  }

  TextContentsCompanion toCompanion(bool nullToAbsent) {
    return TextContentsCompanion(
      id: Value(id),
      originalText: Value(originalText),
      originalLocaleId: Value(originalLocaleId),
    );
  }

  factory TextContent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TextContent(
      id: serializer.fromJson<int>(json['id']),
      originalText: serializer.fromJson<String>(json['originalText']),
      originalLocaleId: serializer.fromJson<int>(json['originalLocaleId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'originalText': serializer.toJson<String>(originalText),
      'originalLocaleId': serializer.toJson<int>(originalLocaleId),
    };
  }

  TextContent copyWith(
          {int? id, String? originalText, int? originalLocaleId}) =>
      TextContent(
        id: id ?? this.id,
        originalText: originalText ?? this.originalText,
        originalLocaleId: originalLocaleId ?? this.originalLocaleId,
      );
  @override
  String toString() {
    return (StringBuffer('TextContent(')
          ..write('id: $id, ')
          ..write('originalText: $originalText, ')
          ..write('originalLocaleId: $originalLocaleId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, originalText, originalLocaleId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TextContent &&
          other.id == this.id &&
          other.originalText == this.originalText &&
          other.originalLocaleId == this.originalLocaleId);
}

class TextContentsCompanion extends UpdateCompanion<TextContent> {
  final Value<int> id;
  final Value<String> originalText;
  final Value<int> originalLocaleId;
  const TextContentsCompanion({
    this.id = const Value.absent(),
    this.originalText = const Value.absent(),
    this.originalLocaleId = const Value.absent(),
  });
  TextContentsCompanion.insert({
    this.id = const Value.absent(),
    required String originalText,
    required int originalLocaleId,
  })  : originalText = Value(originalText),
        originalLocaleId = Value(originalLocaleId);
  static Insertable<TextContent> custom({
    Expression<int>? id,
    Expression<String>? originalText,
    Expression<int>? originalLocaleId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originalText != null) 'original_text': originalText,
      if (originalLocaleId != null) 'original_locale_id': originalLocaleId,
    });
  }

  TextContentsCompanion copyWith(
      {Value<int>? id,
      Value<String>? originalText,
      Value<int>? originalLocaleId}) {
    return TextContentsCompanion(
      id: id ?? this.id,
      originalText: originalText ?? this.originalText,
      originalLocaleId: originalLocaleId ?? this.originalLocaleId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (originalText.present) {
      map['original_text'] = Variable<String>(originalText.value);
    }
    if (originalLocaleId.present) {
      map['original_locale_id'] = Variable<int>(originalLocaleId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TextContentsCompanion(')
          ..write('id: $id, ')
          ..write('originalText: $originalText, ')
          ..write('originalLocaleId: $originalLocaleId')
          ..write(')'))
        .toString();
  }
}

class $TranslationsTable extends Translations
    with TableInfo<$TranslationsTable, Translation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _localeIdMeta =
      const VerificationMeta('localeId');
  @override
  late final GeneratedColumn<int> localeId = GeneratedColumn<int>(
      'locale_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _translationMeta =
      const VerificationMeta('translation');
  @override
  late final GeneratedColumn<String> translation = GeneratedColumn<String>(
      'translation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, localeId, translation];
  @override
  String get aliasedName => _alias ?? 'translations';
  @override
  String get actualTableName => 'translations';
  @override
  VerificationContext validateIntegrity(Insertable<Translation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('locale_id')) {
      context.handle(_localeIdMeta,
          localeId.isAcceptableOrUnknown(data['locale_id']!, _localeIdMeta));
    } else if (isInserting) {
      context.missing(_localeIdMeta);
    }
    if (data.containsKey('translation')) {
      context.handle(
          _translationMeta,
          translation.isAcceptableOrUnknown(
              data['translation']!, _translationMeta));
    } else if (isInserting) {
      context.missing(_translationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, localeId};
  @override
  Translation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Translation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      localeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}locale_id'])!,
      translation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translation'])!,
    );
  }

  @override
  $TranslationsTable createAlias(String alias) {
    return $TranslationsTable(attachedDatabase, alias);
  }
}

class Translation extends DataClass implements Insertable<Translation> {
  final int id;
  final int localeId;
  final String translation;
  const Translation(
      {required this.id, required this.localeId, required this.translation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['locale_id'] = Variable<int>(localeId);
    map['translation'] = Variable<String>(translation);
    return map;
  }

  TranslationsCompanion toCompanion(bool nullToAbsent) {
    return TranslationsCompanion(
      id: Value(id),
      localeId: Value(localeId),
      translation: Value(translation),
    );
  }

  factory Translation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Translation(
      id: serializer.fromJson<int>(json['id']),
      localeId: serializer.fromJson<int>(json['localeId']),
      translation: serializer.fromJson<String>(json['translation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'localeId': serializer.toJson<int>(localeId),
      'translation': serializer.toJson<String>(translation),
    };
  }

  Translation copyWith({int? id, int? localeId, String? translation}) =>
      Translation(
        id: id ?? this.id,
        localeId: localeId ?? this.localeId,
        translation: translation ?? this.translation,
      );
  @override
  String toString() {
    return (StringBuffer('Translation(')
          ..write('id: $id, ')
          ..write('localeId: $localeId, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, localeId, translation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Translation &&
          other.id == this.id &&
          other.localeId == this.localeId &&
          other.translation == this.translation);
}

class TranslationsCompanion extends UpdateCompanion<Translation> {
  final Value<int> id;
  final Value<int> localeId;
  final Value<String> translation;
  const TranslationsCompanion({
    this.id = const Value.absent(),
    this.localeId = const Value.absent(),
    this.translation = const Value.absent(),
  });
  TranslationsCompanion.insert({
    required int id,
    required int localeId,
    required String translation,
  })  : id = Value(id),
        localeId = Value(localeId),
        translation = Value(translation);
  static Insertable<Translation> custom({
    Expression<int>? id,
    Expression<int>? localeId,
    Expression<String>? translation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (localeId != null) 'locale_id': localeId,
      if (translation != null) 'translation': translation,
    });
  }

  TranslationsCompanion copyWith(
      {Value<int>? id, Value<int>? localeId, Value<String>? translation}) {
    return TranslationsCompanion(
      id: id ?? this.id,
      localeId: localeId ?? this.localeId,
      translation: translation ?? this.translation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (localeId.present) {
      map['locale_id'] = Variable<int>(localeId.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationsCompanion(')
          ..write('id: $id, ')
          ..write('localeId: $localeId, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }
}

class $DailySheetsTable extends DailySheets
    with TableInfo<$DailySheetsTable, DailySheet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailySheetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sheetDateMeta =
      const VerificationMeta('sheetDate');
  @override
  late final GeneratedColumn<DateTime> sheetDate = GeneratedColumn<DateTime>(
      'sheet_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, sheetDate];
  @override
  String get aliasedName => _alias ?? 'daily_sheets';
  @override
  String get actualTableName => 'daily_sheets';
  @override
  VerificationContext validateIntegrity(Insertable<DailySheet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sheet_date')) {
      context.handle(_sheetDateMeta,
          sheetDate.isAcceptableOrUnknown(data['sheet_date']!, _sheetDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailySheet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailySheet(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sheetDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sheet_date'])!,
    );
  }

  @override
  $DailySheetsTable createAlias(String alias) {
    return $DailySheetsTable(attachedDatabase, alias);
  }
}

class DailySheet extends DataClass implements Insertable<DailySheet> {
  final int id;
  final DateTime sheetDate;
  const DailySheet({required this.id, required this.sheetDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['sheet_date'] = Variable<DateTime>(sheetDate);
    return map;
  }

  DailySheetsCompanion toCompanion(bool nullToAbsent) {
    return DailySheetsCompanion(
      id: Value(id),
      sheetDate: Value(sheetDate),
    );
  }

  factory DailySheet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailySheet(
      id: serializer.fromJson<int>(json['id']),
      sheetDate: serializer.fromJson<DateTime>(json['sheetDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sheetDate': serializer.toJson<DateTime>(sheetDate),
    };
  }

  DailySheet copyWith({int? id, DateTime? sheetDate}) => DailySheet(
        id: id ?? this.id,
        sheetDate: sheetDate ?? this.sheetDate,
      );
  @override
  String toString() {
    return (StringBuffer('DailySheet(')
          ..write('id: $id, ')
          ..write('sheetDate: $sheetDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sheetDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailySheet &&
          other.id == this.id &&
          other.sheetDate == this.sheetDate);
}

class DailySheetsCompanion extends UpdateCompanion<DailySheet> {
  final Value<int> id;
  final Value<DateTime> sheetDate;
  const DailySheetsCompanion({
    this.id = const Value.absent(),
    this.sheetDate = const Value.absent(),
  });
  DailySheetsCompanion.insert({
    this.id = const Value.absent(),
    this.sheetDate = const Value.absent(),
  });
  static Insertable<DailySheet> custom({
    Expression<int>? id,
    Expression<DateTime>? sheetDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sheetDate != null) 'sheet_date': sheetDate,
    });
  }

  DailySheetsCompanion copyWith({Value<int>? id, Value<DateTime>? sheetDate}) {
    return DailySheetsCompanion(
      id: id ?? this.id,
      sheetDate: sheetDate ?? this.sheetDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sheetDate.present) {
      map['sheet_date'] = Variable<DateTime>(sheetDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailySheetsCompanion(')
          ..write('id: $id, ')
          ..write('sheetDate: $sheetDate')
          ..write(')'))
        .toString();
  }
}

class $LogsTable extends Logs with TableInfo<$LogsTable, Log> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<LogType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<LogType>($LogsTable.$convertertype);
  static const VerificationMeta _timeOffsetMeta =
      const VerificationMeta('timeOffset');
  @override
  late final GeneratedColumn<double> timeOffset = GeneratedColumn<double>(
      'time_offset', aliasedName, false,
      check: () => timeOffset.isBetweenValues(0, 24),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _dailySheetIdMeta =
      const VerificationMeta('dailySheetId');
  @override
  late final GeneratedColumn<int> dailySheetId = GeneratedColumn<int>(
      'daily_sheet_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES daily_sheets (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, type, timeOffset, dailySheetId];
  @override
  String get aliasedName => _alias ?? 'logs';
  @override
  String get actualTableName => 'logs';
  @override
  VerificationContext validateIntegrity(Insertable<Log> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('time_offset')) {
      context.handle(
          _timeOffsetMeta,
          timeOffset.isAcceptableOrUnknown(
              data['time_offset']!, _timeOffsetMeta));
    } else if (isInserting) {
      context.missing(_timeOffsetMeta);
    }
    if (data.containsKey('daily_sheet_id')) {
      context.handle(
          _dailySheetIdMeta,
          dailySheetId.isAcceptableOrUnknown(
              data['daily_sheet_id']!, _dailySheetIdMeta));
    } else if (isInserting) {
      context.missing(_dailySheetIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Log map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Log(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: $LogsTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      timeOffset: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}time_offset'])!,
      dailySheetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}daily_sheet_id'])!,
    );
  }

  @override
  $LogsTable createAlias(String alias) {
    return $LogsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<LogType, int, int> $convertertype =
      const EnumIndexConverter<LogType>(LogType.values);
}

class Log extends DataClass implements Insertable<Log> {
  final int id;
  final LogType type;
  final double timeOffset;
  final int dailySheetId;
  const Log(
      {required this.id,
      required this.type,
      required this.timeOffset,
      required this.dailySheetId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $LogsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['time_offset'] = Variable<double>(timeOffset);
    map['daily_sheet_id'] = Variable<int>(dailySheetId);
    return map;
  }

  LogsCompanion toCompanion(bool nullToAbsent) {
    return LogsCompanion(
      id: Value(id),
      type: Value(type),
      timeOffset: Value(timeOffset),
      dailySheetId: Value(dailySheetId),
    );
  }

  factory Log.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Log(
      id: serializer.fromJson<int>(json['id']),
      type: $LogsTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      timeOffset: serializer.fromJson<double>(json['timeOffset']),
      dailySheetId: serializer.fromJson<int>(json['dailySheetId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<int>($LogsTable.$convertertype.toJson(type)),
      'timeOffset': serializer.toJson<double>(timeOffset),
      'dailySheetId': serializer.toJson<int>(dailySheetId),
    };
  }

  Log copyWith(
          {int? id, LogType? type, double? timeOffset, int? dailySheetId}) =>
      Log(
        id: id ?? this.id,
        type: type ?? this.type,
        timeOffset: timeOffset ?? this.timeOffset,
        dailySheetId: dailySheetId ?? this.dailySheetId,
      );
  @override
  String toString() {
    return (StringBuffer('Log(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('timeOffset: $timeOffset, ')
          ..write('dailySheetId: $dailySheetId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, timeOffset, dailySheetId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Log &&
          other.id == this.id &&
          other.type == this.type &&
          other.timeOffset == this.timeOffset &&
          other.dailySheetId == this.dailySheetId);
}

class LogsCompanion extends UpdateCompanion<Log> {
  final Value<int> id;
  final Value<LogType> type;
  final Value<double> timeOffset;
  final Value<int> dailySheetId;
  const LogsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.timeOffset = const Value.absent(),
    this.dailySheetId = const Value.absent(),
  });
  LogsCompanion.insert({
    this.id = const Value.absent(),
    required LogType type,
    required double timeOffset,
    required int dailySheetId,
  })  : type = Value(type),
        timeOffset = Value(timeOffset),
        dailySheetId = Value(dailySheetId);
  static Insertable<Log> custom({
    Expression<int>? id,
    Expression<int>? type,
    Expression<double>? timeOffset,
    Expression<int>? dailySheetId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (timeOffset != null) 'time_offset': timeOffset,
      if (dailySheetId != null) 'daily_sheet_id': dailySheetId,
    });
  }

  LogsCompanion copyWith(
      {Value<int>? id,
      Value<LogType>? type,
      Value<double>? timeOffset,
      Value<int>? dailySheetId}) {
    return LogsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      timeOffset: timeOffset ?? this.timeOffset,
      dailySheetId: dailySheetId ?? this.dailySheetId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      final converter = $LogsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (timeOffset.present) {
      map['time_offset'] = Variable<double>(timeOffset.value);
    }
    if (dailySheetId.present) {
      map['daily_sheet_id'] = Variable<int>(dailySheetId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('timeOffset: $timeOffset, ')
          ..write('dailySheetId: $dailySheetId')
          ..write(')'))
        .toString();
  }
}

class $GlucoseReadingsTable extends GlucoseReadings
    with TableInfo<$GlucoseReadingsTable, GlucoseReading> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GlucoseReadingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      check: () => value.isBiggerThanValue(0),
      type: DriftSqlType.int,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<GlucoseReadingType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: Constant(GlucoseReadingType.manual.index))
          .withConverter<GlucoseReadingType>(
              $GlucoseReadingsTable.$convertertype);
  static const VerificationMeta _logIdMeta = const VerificationMeta('logId');
  @override
  late final GeneratedColumn<int> logId = GeneratedColumn<int>(
      'log_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES logs (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, value, type, logId];
  @override
  String get aliasedName => _alias ?? 'glucose_readings';
  @override
  String get actualTableName => 'glucose_readings';
  @override
  VerificationContext validateIntegrity(Insertable<GlucoseReading> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('log_id')) {
      context.handle(
          _logIdMeta, logId.isAcceptableOrUnknown(data['log_id']!, _logIdMeta));
    } else if (isInserting) {
      context.missing(_logIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GlucoseReading map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GlucoseReading(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      type: $GlucoseReadingsTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      logId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}log_id'])!,
    );
  }

  @override
  $GlucoseReadingsTable createAlias(String alias) {
    return $GlucoseReadingsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<GlucoseReadingType, int, int> $convertertype =
      const EnumIndexConverter<GlucoseReadingType>(GlucoseReadingType.values);
}

class GlucoseReading extends DataClass implements Insertable<GlucoseReading> {
  final int id;
  final int value;
  final GlucoseReadingType type;
  final int logId;
  const GlucoseReading(
      {required this.id,
      required this.value,
      required this.type,
      required this.logId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['value'] = Variable<int>(value);
    {
      final converter = $GlucoseReadingsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['log_id'] = Variable<int>(logId);
    return map;
  }

  GlucoseReadingsCompanion toCompanion(bool nullToAbsent) {
    return GlucoseReadingsCompanion(
      id: Value(id),
      value: Value(value),
      type: Value(type),
      logId: Value(logId),
    );
  }

  factory GlucoseReading.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GlucoseReading(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<int>(json['value']),
      type: $GlucoseReadingsTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      logId: serializer.fromJson<int>(json['logId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'value': serializer.toJson<int>(value),
      'type': serializer
          .toJson<int>($GlucoseReadingsTable.$convertertype.toJson(type)),
      'logId': serializer.toJson<int>(logId),
    };
  }

  GlucoseReading copyWith(
          {int? id, int? value, GlucoseReadingType? type, int? logId}) =>
      GlucoseReading(
        id: id ?? this.id,
        value: value ?? this.value,
        type: type ?? this.type,
        logId: logId ?? this.logId,
      );
  @override
  String toString() {
    return (StringBuffer('GlucoseReading(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('logId: $logId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value, type, logId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GlucoseReading &&
          other.id == this.id &&
          other.value == this.value &&
          other.type == this.type &&
          other.logId == this.logId);
}

class GlucoseReadingsCompanion extends UpdateCompanion<GlucoseReading> {
  final Value<int> id;
  final Value<int> value;
  final Value<GlucoseReadingType> type;
  final Value<int> logId;
  const GlucoseReadingsCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.logId = const Value.absent(),
  });
  GlucoseReadingsCompanion.insert({
    this.id = const Value.absent(),
    required int value,
    this.type = const Value.absent(),
    required int logId,
  })  : value = Value(value),
        logId = Value(logId);
  static Insertable<GlucoseReading> custom({
    Expression<int>? id,
    Expression<int>? value,
    Expression<int>? type,
    Expression<int>? logId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (logId != null) 'log_id': logId,
    });
  }

  GlucoseReadingsCompanion copyWith(
      {Value<int>? id,
      Value<int>? value,
      Value<GlucoseReadingType>? type,
      Value<int>? logId}) {
    return GlucoseReadingsCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
      type: type ?? this.type,
      logId: logId ?? this.logId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (type.present) {
      final converter = $GlucoseReadingsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (logId.present) {
      map['log_id'] = Variable<int>(logId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GlucoseReadingsCompanion(')
          ..write('id: $id, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('logId: $logId')
          ..write(')'))
        .toString();
  }
}

class $FoodsTable extends Foods with TableInfo<$FoodsTable, Food> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 60),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _sourceIdMeta =
      const VerificationMeta('sourceId');
  @override
  late final GeneratedColumn<int> sourceId = GeneratedColumn<int>(
      'source_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sourceTypeMeta =
      const VerificationMeta('sourceType');
  @override
  late final GeneratedColumnWithTypeConverter<FoodSource, int> sourceType =
      GeneratedColumn<int>('source_type', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: Constant(FoodSource.custom.index))
          .withConverter<FoodSource>($FoodsTable.$convertersourceType);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite =
      GeneratedColumn<bool>('is_favorite', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_favorite" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _nameIdMeta = const VerificationMeta('nameId');
  @override
  late final GeneratedColumn<int> nameId = GeneratedColumn<int>(
      'name_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES text_contents (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, brand, sourceId, sourceType, isFavorite, nameId];
  @override
  String get aliasedName => _alias ?? 'foods';
  @override
  String get actualTableName => 'foods';
  @override
  VerificationContext validateIntegrity(Insertable<Food> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    }
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    }
    context.handle(_sourceTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('name_id')) {
      context.handle(_nameIdMeta,
          nameId.isAcceptableOrUnknown(data['name_id']!, _nameIdMeta));
    } else if (isInserting) {
      context.missing(_nameIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Food map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Food(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand']),
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_id']),
      sourceType: $FoodsTable.$convertersourceType.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      nameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}name_id'])!,
    );
  }

  @override
  $FoodsTable createAlias(String alias) {
    return $FoodsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<FoodSource, int, int> $convertersourceType =
      const EnumIndexConverter<FoodSource>(FoodSource.values);
}

class Food extends DataClass implements Insertable<Food> {
  final int id;
  final String? brand;
  final int? sourceId;
  final FoodSource sourceType;
  final bool isFavorite;
  final int nameId;
  const Food(
      {required this.id,
      this.brand,
      this.sourceId,
      required this.sourceType,
      required this.isFavorite,
      required this.nameId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || sourceId != null) {
      map['source_id'] = Variable<int>(sourceId);
    }
    {
      final converter = $FoodsTable.$convertersourceType;
      map['source_type'] = Variable<int>(converter.toSql(sourceType));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['name_id'] = Variable<int>(nameId);
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      id: Value(id),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      sourceId: sourceId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceId),
      sourceType: Value(sourceType),
      isFavorite: Value(isFavorite),
      nameId: Value(nameId),
    );
  }

  factory Food.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Food(
      id: serializer.fromJson<int>(json['id']),
      brand: serializer.fromJson<String?>(json['brand']),
      sourceId: serializer.fromJson<int?>(json['sourceId']),
      sourceType: $FoodsTable.$convertersourceType
          .fromJson(serializer.fromJson<int>(json['sourceType'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      nameId: serializer.fromJson<int>(json['nameId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'brand': serializer.toJson<String?>(brand),
      'sourceId': serializer.toJson<int?>(sourceId),
      'sourceType': serializer
          .toJson<int>($FoodsTable.$convertersourceType.toJson(sourceType)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'nameId': serializer.toJson<int>(nameId),
    };
  }

  Food copyWith(
          {int? id,
          Value<String?> brand = const Value.absent(),
          Value<int?> sourceId = const Value.absent(),
          FoodSource? sourceType,
          bool? isFavorite,
          int? nameId}) =>
      Food(
        id: id ?? this.id,
        brand: brand.present ? brand.value : this.brand,
        sourceId: sourceId.present ? sourceId.value : this.sourceId,
        sourceType: sourceType ?? this.sourceType,
        isFavorite: isFavorite ?? this.isFavorite,
        nameId: nameId ?? this.nameId,
      );
  @override
  String toString() {
    return (StringBuffer('Food(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('sourceId: $sourceId, ')
          ..write('sourceType: $sourceType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, brand, sourceId, sourceType, isFavorite, nameId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Food &&
          other.id == this.id &&
          other.brand == this.brand &&
          other.sourceId == this.sourceId &&
          other.sourceType == this.sourceType &&
          other.isFavorite == this.isFavorite &&
          other.nameId == this.nameId);
}

class FoodsCompanion extends UpdateCompanion<Food> {
  final Value<int> id;
  final Value<String?> brand;
  final Value<int?> sourceId;
  final Value<FoodSource> sourceType;
  final Value<bool> isFavorite;
  final Value<int> nameId;
  const FoodsCompanion({
    this.id = const Value.absent(),
    this.brand = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.nameId = const Value.absent(),
  });
  FoodsCompanion.insert({
    this.id = const Value.absent(),
    this.brand = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    required int nameId,
  }) : nameId = Value(nameId);
  static Insertable<Food> custom({
    Expression<int>? id,
    Expression<String>? brand,
    Expression<int>? sourceId,
    Expression<int>? sourceType,
    Expression<bool>? isFavorite,
    Expression<int>? nameId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brand != null) 'brand': brand,
      if (sourceId != null) 'source_id': sourceId,
      if (sourceType != null) 'source_type': sourceType,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (nameId != null) 'name_id': nameId,
    });
  }

  FoodsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? brand,
      Value<int?>? sourceId,
      Value<FoodSource>? sourceType,
      Value<bool>? isFavorite,
      Value<int>? nameId}) {
    return FoodsCompanion(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      sourceId: sourceId ?? this.sourceId,
      sourceType: sourceType ?? this.sourceType,
      isFavorite: isFavorite ?? this.isFavorite,
      nameId: nameId ?? this.nameId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<int>(sourceId.value);
    }
    if (sourceType.present) {
      final converter = $FoodsTable.$convertersourceType;
      map['source_type'] = Variable<int>(converter.toSql(sourceType.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (nameId.present) {
      map['name_id'] = Variable<int>(nameId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('sourceId: $sourceId, ')
          ..write('sourceType: $sourceType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }
}

class $UnitsTable extends Units with TableInfo<$UnitsTable, Unit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameIdMeta = const VerificationMeta('nameId');
  @override
  late final GeneratedColumn<int> nameId = GeneratedColumn<int>(
      'name_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES text_contents (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, nameId];
  @override
  String get aliasedName => _alias ?? 'units';
  @override
  String get actualTableName => 'units';
  @override
  VerificationContext validateIntegrity(Insertable<Unit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name_id')) {
      context.handle(_nameIdMeta,
          nameId.isAcceptableOrUnknown(data['name_id']!, _nameIdMeta));
    } else if (isInserting) {
      context.missing(_nameIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Unit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Unit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}name_id'])!,
    );
  }

  @override
  $UnitsTable createAlias(String alias) {
    return $UnitsTable(attachedDatabase, alias);
  }
}

class Unit extends DataClass implements Insertable<Unit> {
  final int id;
  final int nameId;
  const Unit({required this.id, required this.nameId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name_id'] = Variable<int>(nameId);
    return map;
  }

  UnitsCompanion toCompanion(bool nullToAbsent) {
    return UnitsCompanion(
      id: Value(id),
      nameId: Value(nameId),
    );
  }

  factory Unit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Unit(
      id: serializer.fromJson<int>(json['id']),
      nameId: serializer.fromJson<int>(json['nameId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nameId': serializer.toJson<int>(nameId),
    };
  }

  Unit copyWith({int? id, int? nameId}) => Unit(
        id: id ?? this.id,
        nameId: nameId ?? this.nameId,
      );
  @override
  String toString() {
    return (StringBuffer('Unit(')
          ..write('id: $id, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nameId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Unit && other.id == this.id && other.nameId == this.nameId);
}

class UnitsCompanion extends UpdateCompanion<Unit> {
  final Value<int> id;
  final Value<int> nameId;
  const UnitsCompanion({
    this.id = const Value.absent(),
    this.nameId = const Value.absent(),
  });
  UnitsCompanion.insert({
    this.id = const Value.absent(),
    required int nameId,
  }) : nameId = Value(nameId);
  static Insertable<Unit> custom({
    Expression<int>? id,
    Expression<int>? nameId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nameId != null) 'name_id': nameId,
    });
  }

  UnitsCompanion copyWith({Value<int>? id, Value<int>? nameId}) {
    return UnitsCompanion(
      id: id ?? this.id,
      nameId: nameId ?? this.nameId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nameId.present) {
      map['name_id'] = Variable<int>(nameId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitsCompanion(')
          ..write('id: $id, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }
}

class $FoodUnitsTable extends FoodUnits
    with TableInfo<$FoodUnitsTable, FoodUnit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodUnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<Status, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: Constant(Status.available.index))
          .withConverter<Status>($FoodUnitsTable.$converterstatus);
  static const VerificationMeta _carbMeta = const VerificationMeta('carb');
  @override
  late final GeneratedColumn<double> carb = GeneratedColumn<double>(
      'carb', aliasedName, false,
      check: () => carb.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _fiberMeta = const VerificationMeta('fiber');
  @override
  late final GeneratedColumn<double> fiber = GeneratedColumn<double>(
      'fiber', aliasedName, true,
      check: () => fiber.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _proteinMeta =
      const VerificationMeta('protein');
  @override
  late final GeneratedColumn<double> protein = GeneratedColumn<double>(
      'protein', aliasedName, true,
      check: () => fiber.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _fatMeta = const VerificationMeta('fat');
  @override
  late final GeneratedColumn<double> fat = GeneratedColumn<double>(
      'fat', aliasedName, true,
      check: () => fiber.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      check: () => quantity.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<double> volume = GeneratedColumn<double>(
      'volume', aliasedName, true,
      check: () => volume.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, true,
      check: () => volume.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<int> foodId = GeneratedColumn<int>(
      'food_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES foods (id)'));
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<int> unitId = GeneratedColumn<int>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES units (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        status,
        carb,
        fiber,
        protein,
        fat,
        quantity,
        volume,
        weight,
        foodId,
        unitId
      ];
  @override
  String get aliasedName => _alias ?? 'food_units';
  @override
  String get actualTableName => 'food_units';
  @override
  VerificationContext validateIntegrity(Insertable<FoodUnit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('carb')) {
      context.handle(
          _carbMeta, carb.isAcceptableOrUnknown(data['carb']!, _carbMeta));
    } else if (isInserting) {
      context.missing(_carbMeta);
    }
    if (data.containsKey('fiber')) {
      context.handle(
          _fiberMeta, fiber.isAcceptableOrUnknown(data['fiber']!, _fiberMeta));
    }
    if (data.containsKey('protein')) {
      context.handle(_proteinMeta,
          protein.isAcceptableOrUnknown(data['protein']!, _proteinMeta));
    }
    if (data.containsKey('fat')) {
      context.handle(
          _fatMeta, fat.isAcceptableOrUnknown(data['fat']!, _fatMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('volume')) {
      context.handle(_volumeMeta,
          volume.isAcceptableOrUnknown(data['volume']!, _volumeMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('food_id')) {
      context.handle(_foodIdMeta,
          foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta));
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodUnit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodUnit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      status: $FoodUnitsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!),
      carb: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}carb'])!,
      fiber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fiber']),
      protein: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}protein']),
      fat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fat']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      volume: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}volume']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight']),
      foodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}food_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_id'])!,
    );
  }

  @override
  $FoodUnitsTable createAlias(String alias) {
    return $FoodUnitsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Status, int, int> $converterstatus =
      const EnumIndexConverter<Status>(Status.values);
}

class FoodUnit extends DataClass implements Insertable<FoodUnit> {
  final int id;
  final Status status;
  final double carb;
  final double? fiber;
  final double? protein;
  final double? fat;
  final double quantity;
  final double? volume;
  final double? weight;
  final int foodId;
  final int unitId;
  const FoodUnit(
      {required this.id,
      required this.status,
      required this.carb,
      this.fiber,
      this.protein,
      this.fat,
      required this.quantity,
      this.volume,
      this.weight,
      required this.foodId,
      required this.unitId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $FoodUnitsTable.$converterstatus;
      map['status'] = Variable<int>(converter.toSql(status));
    }
    map['carb'] = Variable<double>(carb);
    if (!nullToAbsent || fiber != null) {
      map['fiber'] = Variable<double>(fiber);
    }
    if (!nullToAbsent || protein != null) {
      map['protein'] = Variable<double>(protein);
    }
    if (!nullToAbsent || fat != null) {
      map['fat'] = Variable<double>(fat);
    }
    map['quantity'] = Variable<double>(quantity);
    if (!nullToAbsent || volume != null) {
      map['volume'] = Variable<double>(volume);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    map['food_id'] = Variable<int>(foodId);
    map['unit_id'] = Variable<int>(unitId);
    return map;
  }

  FoodUnitsCompanion toCompanion(bool nullToAbsent) {
    return FoodUnitsCompanion(
      id: Value(id),
      status: Value(status),
      carb: Value(carb),
      fiber:
          fiber == null && nullToAbsent ? const Value.absent() : Value(fiber),
      protein: protein == null && nullToAbsent
          ? const Value.absent()
          : Value(protein),
      fat: fat == null && nullToAbsent ? const Value.absent() : Value(fat),
      quantity: Value(quantity),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      foodId: Value(foodId),
      unitId: Value(unitId),
    );
  }

  factory FoodUnit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodUnit(
      id: serializer.fromJson<int>(json['id']),
      status: $FoodUnitsTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      carb: serializer.fromJson<double>(json['carb']),
      fiber: serializer.fromJson<double?>(json['fiber']),
      protein: serializer.fromJson<double?>(json['protein']),
      fat: serializer.fromJson<double?>(json['fat']),
      quantity: serializer.fromJson<double>(json['quantity']),
      volume: serializer.fromJson<double?>(json['volume']),
      weight: serializer.fromJson<double?>(json['weight']),
      foodId: serializer.fromJson<int>(json['foodId']),
      unitId: serializer.fromJson<int>(json['unitId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'status': serializer
          .toJson<int>($FoodUnitsTable.$converterstatus.toJson(status)),
      'carb': serializer.toJson<double>(carb),
      'fiber': serializer.toJson<double?>(fiber),
      'protein': serializer.toJson<double?>(protein),
      'fat': serializer.toJson<double?>(fat),
      'quantity': serializer.toJson<double>(quantity),
      'volume': serializer.toJson<double?>(volume),
      'weight': serializer.toJson<double?>(weight),
      'foodId': serializer.toJson<int>(foodId),
      'unitId': serializer.toJson<int>(unitId),
    };
  }

  FoodUnit copyWith(
          {int? id,
          Status? status,
          double? carb,
          Value<double?> fiber = const Value.absent(),
          Value<double?> protein = const Value.absent(),
          Value<double?> fat = const Value.absent(),
          double? quantity,
          Value<double?> volume = const Value.absent(),
          Value<double?> weight = const Value.absent(),
          int? foodId,
          int? unitId}) =>
      FoodUnit(
        id: id ?? this.id,
        status: status ?? this.status,
        carb: carb ?? this.carb,
        fiber: fiber.present ? fiber.value : this.fiber,
        protein: protein.present ? protein.value : this.protein,
        fat: fat.present ? fat.value : this.fat,
        quantity: quantity ?? this.quantity,
        volume: volume.present ? volume.value : this.volume,
        weight: weight.present ? weight.value : this.weight,
        foodId: foodId ?? this.foodId,
        unitId: unitId ?? this.unitId,
      );
  @override
  String toString() {
    return (StringBuffer('FoodUnit(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('carb: $carb, ')
          ..write('fiber: $fiber, ')
          ..write('protein: $protein, ')
          ..write('fat: $fat, ')
          ..write('quantity: $quantity, ')
          ..write('volume: $volume, ')
          ..write('weight: $weight, ')
          ..write('foodId: $foodId, ')
          ..write('unitId: $unitId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, status, carb, fiber, protein, fat,
      quantity, volume, weight, foodId, unitId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodUnit &&
          other.id == this.id &&
          other.status == this.status &&
          other.carb == this.carb &&
          other.fiber == this.fiber &&
          other.protein == this.protein &&
          other.fat == this.fat &&
          other.quantity == this.quantity &&
          other.volume == this.volume &&
          other.weight == this.weight &&
          other.foodId == this.foodId &&
          other.unitId == this.unitId);
}

class FoodUnitsCompanion extends UpdateCompanion<FoodUnit> {
  final Value<int> id;
  final Value<Status> status;
  final Value<double> carb;
  final Value<double?> fiber;
  final Value<double?> protein;
  final Value<double?> fat;
  final Value<double> quantity;
  final Value<double?> volume;
  final Value<double?> weight;
  final Value<int> foodId;
  final Value<int> unitId;
  const FoodUnitsCompanion({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.carb = const Value.absent(),
    this.fiber = const Value.absent(),
    this.protein = const Value.absent(),
    this.fat = const Value.absent(),
    this.quantity = const Value.absent(),
    this.volume = const Value.absent(),
    this.weight = const Value.absent(),
    this.foodId = const Value.absent(),
    this.unitId = const Value.absent(),
  });
  FoodUnitsCompanion.insert({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    required double carb,
    this.fiber = const Value.absent(),
    this.protein = const Value.absent(),
    this.fat = const Value.absent(),
    this.quantity = const Value.absent(),
    this.volume = const Value.absent(),
    this.weight = const Value.absent(),
    required int foodId,
    required int unitId,
  })  : carb = Value(carb),
        foodId = Value(foodId),
        unitId = Value(unitId);
  static Insertable<FoodUnit> custom({
    Expression<int>? id,
    Expression<int>? status,
    Expression<double>? carb,
    Expression<double>? fiber,
    Expression<double>? protein,
    Expression<double>? fat,
    Expression<double>? quantity,
    Expression<double>? volume,
    Expression<double>? weight,
    Expression<int>? foodId,
    Expression<int>? unitId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (status != null) 'status': status,
      if (carb != null) 'carb': carb,
      if (fiber != null) 'fiber': fiber,
      if (protein != null) 'protein': protein,
      if (fat != null) 'fat': fat,
      if (quantity != null) 'quantity': quantity,
      if (volume != null) 'volume': volume,
      if (weight != null) 'weight': weight,
      if (foodId != null) 'food_id': foodId,
      if (unitId != null) 'unit_id': unitId,
    });
  }

  FoodUnitsCompanion copyWith(
      {Value<int>? id,
      Value<Status>? status,
      Value<double>? carb,
      Value<double?>? fiber,
      Value<double?>? protein,
      Value<double?>? fat,
      Value<double>? quantity,
      Value<double?>? volume,
      Value<double?>? weight,
      Value<int>? foodId,
      Value<int>? unitId}) {
    return FoodUnitsCompanion(
      id: id ?? this.id,
      status: status ?? this.status,
      carb: carb ?? this.carb,
      fiber: fiber ?? this.fiber,
      protein: protein ?? this.protein,
      fat: fat ?? this.fat,
      quantity: quantity ?? this.quantity,
      volume: volume ?? this.volume,
      weight: weight ?? this.weight,
      foodId: foodId ?? this.foodId,
      unitId: unitId ?? this.unitId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (status.present) {
      final converter = $FoodUnitsTable.$converterstatus;
      map['status'] = Variable<int>(converter.toSql(status.value));
    }
    if (carb.present) {
      map['carb'] = Variable<double>(carb.value);
    }
    if (fiber.present) {
      map['fiber'] = Variable<double>(fiber.value);
    }
    if (protein.present) {
      map['protein'] = Variable<double>(protein.value);
    }
    if (fat.present) {
      map['fat'] = Variable<double>(fat.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (volume.present) {
      map['volume'] = Variable<double>(volume.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<int>(foodId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodUnitsCompanion(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('carb: $carb, ')
          ..write('fiber: $fiber, ')
          ..write('protein: $protein, ')
          ..write('fat: $fat, ')
          ..write('quantity: $quantity, ')
          ..write('volume: $volume, ')
          ..write('weight: $weight, ')
          ..write('foodId: $foodId, ')
          ..write('unitId: $unitId')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameIdMeta = const VerificationMeta('nameId');
  @override
  late final GeneratedColumn<int> nameId = GeneratedColumn<int>(
      'name_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES text_contents (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, nameId];
  @override
  String get aliasedName => _alias ?? 'tags';
  @override
  String get actualTableName => 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name_id')) {
      context.handle(_nameIdMeta,
          nameId.isAcceptableOrUnknown(data['name_id']!, _nameIdMeta));
    } else if (isInserting) {
      context.missing(_nameIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}name_id'])!,
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final int id;
  final int nameId;
  const Tag({required this.id, required this.nameId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name_id'] = Variable<int>(nameId);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: Value(id),
      nameId: Value(nameId),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<int>(json['id']),
      nameId: serializer.fromJson<int>(json['nameId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nameId': serializer.toJson<int>(nameId),
    };
  }

  Tag copyWith({int? id, int? nameId}) => Tag(
        id: id ?? this.id,
        nameId: nameId ?? this.nameId,
      );
  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nameId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag && other.id == this.id && other.nameId == this.nameId);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<int> id;
  final Value<int> nameId;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.nameId = const Value.absent(),
  });
  TagsCompanion.insert({
    this.id = const Value.absent(),
    required int nameId,
  }) : nameId = Value(nameId);
  static Insertable<Tag> custom({
    Expression<int>? id,
    Expression<int>? nameId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nameId != null) 'name_id': nameId,
    });
  }

  TagsCompanion copyWith({Value<int>? id, Value<int>? nameId}) {
    return TagsCompanion(
      id: id ?? this.id,
      nameId: nameId ?? this.nameId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nameId.present) {
      map['name_id'] = Variable<int>(nameId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('nameId: $nameId')
          ..write(')'))
        .toString();
  }
}

class $FoodTagsTable extends FoodTags with TableInfo<$FoodTagsTable, FoodTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<int> foodId = GeneratedColumn<int>(
      'food_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [tagId, foodId];
  @override
  String get aliasedName => _alias ?? 'food_tags';
  @override
  String get actualTableName => 'food_tags';
  @override
  VerificationContext validateIntegrity(Insertable<FoodTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(_foodIdMeta,
          foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta));
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FoodTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodTag(
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
      foodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}food_id'])!,
    );
  }

  @override
  $FoodTagsTable createAlias(String alias) {
    return $FoodTagsTable(attachedDatabase, alias);
  }
}

class FoodTag extends DataClass implements Insertable<FoodTag> {
  final int tagId;
  final int foodId;
  const FoodTag({required this.tagId, required this.foodId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['tag_id'] = Variable<int>(tagId);
    map['food_id'] = Variable<int>(foodId);
    return map;
  }

  FoodTagsCompanion toCompanion(bool nullToAbsent) {
    return FoodTagsCompanion(
      tagId: Value(tagId),
      foodId: Value(foodId),
    );
  }

  factory FoodTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodTag(
      tagId: serializer.fromJson<int>(json['tagId']),
      foodId: serializer.fromJson<int>(json['foodId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tagId': serializer.toJson<int>(tagId),
      'foodId': serializer.toJson<int>(foodId),
    };
  }

  FoodTag copyWith({int? tagId, int? foodId}) => FoodTag(
        tagId: tagId ?? this.tagId,
        foodId: foodId ?? this.foodId,
      );
  @override
  String toString() {
    return (StringBuffer('FoodTag(')
          ..write('tagId: $tagId, ')
          ..write('foodId: $foodId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(tagId, foodId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodTag &&
          other.tagId == this.tagId &&
          other.foodId == this.foodId);
}

class FoodTagsCompanion extends UpdateCompanion<FoodTag> {
  final Value<int> tagId;
  final Value<int> foodId;
  const FoodTagsCompanion({
    this.tagId = const Value.absent(),
    this.foodId = const Value.absent(),
  });
  FoodTagsCompanion.insert({
    required int tagId,
    required int foodId,
  })  : tagId = Value(tagId),
        foodId = Value(foodId);
  static Insertable<FoodTag> custom({
    Expression<int>? tagId,
    Expression<int>? foodId,
  }) {
    return RawValuesInsertable({
      if (tagId != null) 'tag_id': tagId,
      if (foodId != null) 'food_id': foodId,
    });
  }

  FoodTagsCompanion copyWith({Value<int>? tagId, Value<int>? foodId}) {
    return FoodTagsCompanion(
      tagId: tagId ?? this.tagId,
      foodId: foodId ?? this.foodId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<int>(foodId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodTagsCompanion(')
          ..write('tagId: $tagId, ')
          ..write('foodId: $foodId')
          ..write(')'))
        .toString();
  }
}

class $InsulinPresetsTable extends InsulinPresets
    with TableInfo<$InsulinPresetsTable, InsulinPreset> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InsulinPresetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<Status, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: Constant(Status.available.index))
          .withConverter<Status>($InsulinPresetsTable.$converterstatus);
  static const VerificationMeta _breakfastRatioMeta =
      const VerificationMeta('breakfastRatio');
  @override
  late final GeneratedColumn<double> breakfastRatio = GeneratedColumn<double>(
      'breakfast_ratio', aliasedName, false,
      check: () => breakfastRatio.isBiggerThanValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _lunchRatioMeta =
      const VerificationMeta('lunchRatio');
  @override
  late final GeneratedColumn<double> lunchRatio = GeneratedColumn<double>(
      'lunch_ratio', aliasedName, false,
      check: () => lunchRatio.isBiggerThanValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _dinnerRatioMeta =
      const VerificationMeta('dinnerRatio');
  @override
  late final GeneratedColumn<double> dinnerRatio = GeneratedColumn<double>(
      'dinner_ratio', aliasedName, false,
      check: () => dinnerRatio.isBiggerThanValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _eveningRatioMeta =
      const VerificationMeta('eveningRatio');
  @override
  late final GeneratedColumn<double> eveningRatio = GeneratedColumn<double>(
      'evening_ratio', aliasedName, false,
      check: () => eveningRatio.isBiggerThanValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _passiveInsulinMeta =
      const VerificationMeta('passiveInsulin');
  @override
  late final GeneratedColumn<double> passiveInsulin = GeneratedColumn<double>(
      'passive_insulin', aliasedName, true,
      check: () => passiveInsulin.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        status,
        breakfastRatio,
        lunchRatio,
        dinnerRatio,
        eveningRatio,
        passiveInsulin
      ];
  @override
  String get aliasedName => _alias ?? 'insulin_presets';
  @override
  String get actualTableName => 'insulin_presets';
  @override
  VerificationContext validateIntegrity(Insertable<InsulinPreset> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('breakfast_ratio')) {
      context.handle(
          _breakfastRatioMeta,
          breakfastRatio.isAcceptableOrUnknown(
              data['breakfast_ratio']!, _breakfastRatioMeta));
    } else if (isInserting) {
      context.missing(_breakfastRatioMeta);
    }
    if (data.containsKey('lunch_ratio')) {
      context.handle(
          _lunchRatioMeta,
          lunchRatio.isAcceptableOrUnknown(
              data['lunch_ratio']!, _lunchRatioMeta));
    } else if (isInserting) {
      context.missing(_lunchRatioMeta);
    }
    if (data.containsKey('dinner_ratio')) {
      context.handle(
          _dinnerRatioMeta,
          dinnerRatio.isAcceptableOrUnknown(
              data['dinner_ratio']!, _dinnerRatioMeta));
    } else if (isInserting) {
      context.missing(_dinnerRatioMeta);
    }
    if (data.containsKey('evening_ratio')) {
      context.handle(
          _eveningRatioMeta,
          eveningRatio.isAcceptableOrUnknown(
              data['evening_ratio']!, _eveningRatioMeta));
    } else if (isInserting) {
      context.missing(_eveningRatioMeta);
    }
    if (data.containsKey('passive_insulin')) {
      context.handle(
          _passiveInsulinMeta,
          passiveInsulin.isAcceptableOrUnknown(
              data['passive_insulin']!, _passiveInsulinMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InsulinPreset map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InsulinPreset(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      status: $InsulinPresetsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!),
      breakfastRatio: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}breakfast_ratio'])!,
      lunchRatio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lunch_ratio'])!,
      dinnerRatio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dinner_ratio'])!,
      eveningRatio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}evening_ratio'])!,
      passiveInsulin: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}passive_insulin']),
    );
  }

  @override
  $InsulinPresetsTable createAlias(String alias) {
    return $InsulinPresetsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Status, int, int> $converterstatus =
      const EnumIndexConverter<Status>(Status.values);
}

class InsulinPreset extends DataClass implements Insertable<InsulinPreset> {
  final int id;
  final String name;
  final Status status;
  final double breakfastRatio;
  final double lunchRatio;
  final double dinnerRatio;
  final double eveningRatio;
  final double? passiveInsulin;
  const InsulinPreset(
      {required this.id,
      required this.name,
      required this.status,
      required this.breakfastRatio,
      required this.lunchRatio,
      required this.dinnerRatio,
      required this.eveningRatio,
      this.passiveInsulin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $InsulinPresetsTable.$converterstatus;
      map['status'] = Variable<int>(converter.toSql(status));
    }
    map['breakfast_ratio'] = Variable<double>(breakfastRatio);
    map['lunch_ratio'] = Variable<double>(lunchRatio);
    map['dinner_ratio'] = Variable<double>(dinnerRatio);
    map['evening_ratio'] = Variable<double>(eveningRatio);
    if (!nullToAbsent || passiveInsulin != null) {
      map['passive_insulin'] = Variable<double>(passiveInsulin);
    }
    return map;
  }

  InsulinPresetsCompanion toCompanion(bool nullToAbsent) {
    return InsulinPresetsCompanion(
      id: Value(id),
      name: Value(name),
      status: Value(status),
      breakfastRatio: Value(breakfastRatio),
      lunchRatio: Value(lunchRatio),
      dinnerRatio: Value(dinnerRatio),
      eveningRatio: Value(eveningRatio),
      passiveInsulin: passiveInsulin == null && nullToAbsent
          ? const Value.absent()
          : Value(passiveInsulin),
    );
  }

  factory InsulinPreset.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InsulinPreset(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      status: $InsulinPresetsTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      breakfastRatio: serializer.fromJson<double>(json['breakfastRatio']),
      lunchRatio: serializer.fromJson<double>(json['lunchRatio']),
      dinnerRatio: serializer.fromJson<double>(json['dinnerRatio']),
      eveningRatio: serializer.fromJson<double>(json['eveningRatio']),
      passiveInsulin: serializer.fromJson<double?>(json['passiveInsulin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'status': serializer
          .toJson<int>($InsulinPresetsTable.$converterstatus.toJson(status)),
      'breakfastRatio': serializer.toJson<double>(breakfastRatio),
      'lunchRatio': serializer.toJson<double>(lunchRatio),
      'dinnerRatio': serializer.toJson<double>(dinnerRatio),
      'eveningRatio': serializer.toJson<double>(eveningRatio),
      'passiveInsulin': serializer.toJson<double?>(passiveInsulin),
    };
  }

  InsulinPreset copyWith(
          {int? id,
          String? name,
          Status? status,
          double? breakfastRatio,
          double? lunchRatio,
          double? dinnerRatio,
          double? eveningRatio,
          Value<double?> passiveInsulin = const Value.absent()}) =>
      InsulinPreset(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        breakfastRatio: breakfastRatio ?? this.breakfastRatio,
        lunchRatio: lunchRatio ?? this.lunchRatio,
        dinnerRatio: dinnerRatio ?? this.dinnerRatio,
        eveningRatio: eveningRatio ?? this.eveningRatio,
        passiveInsulin:
            passiveInsulin.present ? passiveInsulin.value : this.passiveInsulin,
      );
  @override
  String toString() {
    return (StringBuffer('InsulinPreset(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('breakfastRatio: $breakfastRatio, ')
          ..write('lunchRatio: $lunchRatio, ')
          ..write('dinnerRatio: $dinnerRatio, ')
          ..write('eveningRatio: $eveningRatio, ')
          ..write('passiveInsulin: $passiveInsulin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, status, breakfastRatio, lunchRatio,
      dinnerRatio, eveningRatio, passiveInsulin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InsulinPreset &&
          other.id == this.id &&
          other.name == this.name &&
          other.status == this.status &&
          other.breakfastRatio == this.breakfastRatio &&
          other.lunchRatio == this.lunchRatio &&
          other.dinnerRatio == this.dinnerRatio &&
          other.eveningRatio == this.eveningRatio &&
          other.passiveInsulin == this.passiveInsulin);
}

class InsulinPresetsCompanion extends UpdateCompanion<InsulinPreset> {
  final Value<int> id;
  final Value<String> name;
  final Value<Status> status;
  final Value<double> breakfastRatio;
  final Value<double> lunchRatio;
  final Value<double> dinnerRatio;
  final Value<double> eveningRatio;
  final Value<double?> passiveInsulin;
  const InsulinPresetsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.breakfastRatio = const Value.absent(),
    this.lunchRatio = const Value.absent(),
    this.dinnerRatio = const Value.absent(),
    this.eveningRatio = const Value.absent(),
    this.passiveInsulin = const Value.absent(),
  });
  InsulinPresetsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.status = const Value.absent(),
    required double breakfastRatio,
    required double lunchRatio,
    required double dinnerRatio,
    required double eveningRatio,
    this.passiveInsulin = const Value.absent(),
  })  : name = Value(name),
        breakfastRatio = Value(breakfastRatio),
        lunchRatio = Value(lunchRatio),
        dinnerRatio = Value(dinnerRatio),
        eveningRatio = Value(eveningRatio);
  static Insertable<InsulinPreset> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? status,
    Expression<double>? breakfastRatio,
    Expression<double>? lunchRatio,
    Expression<double>? dinnerRatio,
    Expression<double>? eveningRatio,
    Expression<double>? passiveInsulin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (breakfastRatio != null) 'breakfast_ratio': breakfastRatio,
      if (lunchRatio != null) 'lunch_ratio': lunchRatio,
      if (dinnerRatio != null) 'dinner_ratio': dinnerRatio,
      if (eveningRatio != null) 'evening_ratio': eveningRatio,
      if (passiveInsulin != null) 'passive_insulin': passiveInsulin,
    });
  }

  InsulinPresetsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<Status>? status,
      Value<double>? breakfastRatio,
      Value<double>? lunchRatio,
      Value<double>? dinnerRatio,
      Value<double>? eveningRatio,
      Value<double?>? passiveInsulin}) {
    return InsulinPresetsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      breakfastRatio: breakfastRatio ?? this.breakfastRatio,
      lunchRatio: lunchRatio ?? this.lunchRatio,
      dinnerRatio: dinnerRatio ?? this.dinnerRatio,
      eveningRatio: eveningRatio ?? this.eveningRatio,
      passiveInsulin: passiveInsulin ?? this.passiveInsulin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      final converter = $InsulinPresetsTable.$converterstatus;
      map['status'] = Variable<int>(converter.toSql(status.value));
    }
    if (breakfastRatio.present) {
      map['breakfast_ratio'] = Variable<double>(breakfastRatio.value);
    }
    if (lunchRatio.present) {
      map['lunch_ratio'] = Variable<double>(lunchRatio.value);
    }
    if (dinnerRatio.present) {
      map['dinner_ratio'] = Variable<double>(dinnerRatio.value);
    }
    if (eveningRatio.present) {
      map['evening_ratio'] = Variable<double>(eveningRatio.value);
    }
    if (passiveInsulin.present) {
      map['passive_insulin'] = Variable<double>(passiveInsulin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InsulinPresetsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('breakfastRatio: $breakfastRatio, ')
          ..write('lunchRatio: $lunchRatio, ')
          ..write('dinnerRatio: $dinnerRatio, ')
          ..write('eveningRatio: $eveningRatio, ')
          ..write('passiveInsulin: $passiveInsulin')
          ..write(')'))
        .toString();
  }
}

class $MealsTable extends Meals with TableInfo<$MealsTable, Meal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _netCarbMeta =
      const VerificationMeta('netCarb');
  @override
  late final GeneratedColumn<double> netCarb = GeneratedColumn<double>(
      'net_carb', aliasedName, false,
      check: () => netCarb.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _bolusCorrectionMeta =
      const VerificationMeta('bolusCorrection');
  @override
  late final GeneratedColumn<double> bolusCorrection = GeneratedColumn<double>(
      'bolus_correction', aliasedName, true,
      check: () => bolusCorrection.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _bolusTotalMeta =
      const VerificationMeta('bolusTotal');
  @override
  late final GeneratedColumn<double> bolusTotal = GeneratedColumn<double>(
      'bolus_total', aliasedName, true,
      check: () => bolusTotal.isBiggerOrEqualValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: false);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite =
      GeneratedColumn<bool>('is_favorite', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_favorite" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<MealType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<MealType>($MealsTable.$convertertype);
  static const VerificationMeta _logIdMeta = const VerificationMeta('logId');
  @override
  late final GeneratedColumn<int> logId = GeneratedColumn<int>(
      'log_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES logs (id)'));
  static const VerificationMeta _glucoseReadingIdMeta =
      const VerificationMeta('glucoseReadingId');
  @override
  late final GeneratedColumn<int> glucoseReadingId = GeneratedColumn<int>(
      'glucose_reading_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES glucose_readings (id)'));
  static const VerificationMeta _insulinPresetIdMeta =
      const VerificationMeta('insulinPresetId');
  @override
  late final GeneratedColumn<int> insulinPresetId = GeneratedColumn<int>(
      'insulin_preset_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES insulin_presets (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        netCarb,
        bolusCorrection,
        bolusTotal,
        isFavorite,
        type,
        logId,
        glucoseReadingId,
        insulinPresetId
      ];
  @override
  String get aliasedName => _alias ?? 'meals';
  @override
  String get actualTableName => 'meals';
  @override
  VerificationContext validateIntegrity(Insertable<Meal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('net_carb')) {
      context.handle(_netCarbMeta,
          netCarb.isAcceptableOrUnknown(data['net_carb']!, _netCarbMeta));
    }
    if (data.containsKey('bolus_correction')) {
      context.handle(
          _bolusCorrectionMeta,
          bolusCorrection.isAcceptableOrUnknown(
              data['bolus_correction']!, _bolusCorrectionMeta));
    }
    if (data.containsKey('bolus_total')) {
      context.handle(
          _bolusTotalMeta,
          bolusTotal.isAcceptableOrUnknown(
              data['bolus_total']!, _bolusTotalMeta));
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('log_id')) {
      context.handle(
          _logIdMeta, logId.isAcceptableOrUnknown(data['log_id']!, _logIdMeta));
    } else if (isInserting) {
      context.missing(_logIdMeta);
    }
    if (data.containsKey('glucose_reading_id')) {
      context.handle(
          _glucoseReadingIdMeta,
          glucoseReadingId.isAcceptableOrUnknown(
              data['glucose_reading_id']!, _glucoseReadingIdMeta));
    }
    if (data.containsKey('insulin_preset_id')) {
      context.handle(
          _insulinPresetIdMeta,
          insulinPresetId.isAcceptableOrUnknown(
              data['insulin_preset_id']!, _insulinPresetIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Meal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Meal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      netCarb: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_carb'])!,
      bolusCorrection: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}bolus_correction']),
      bolusTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}bolus_total']),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      type: $MealsTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      logId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}log_id'])!,
      glucoseReadingId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}glucose_reading_id']),
      insulinPresetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}insulin_preset_id']),
    );
  }

  @override
  $MealsTable createAlias(String alias) {
    return $MealsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MealType, int, int> $convertertype =
      const EnumIndexConverter<MealType>(MealType.values);
}

class Meal extends DataClass implements Insertable<Meal> {
  final int id;
  final double netCarb;
  final double? bolusCorrection;
  final double? bolusTotal;
  final bool isFavorite;
  final MealType type;
  final int logId;
  final int? glucoseReadingId;
  final int? insulinPresetId;
  const Meal(
      {required this.id,
      required this.netCarb,
      this.bolusCorrection,
      this.bolusTotal,
      required this.isFavorite,
      required this.type,
      required this.logId,
      this.glucoseReadingId,
      this.insulinPresetId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['net_carb'] = Variable<double>(netCarb);
    if (!nullToAbsent || bolusCorrection != null) {
      map['bolus_correction'] = Variable<double>(bolusCorrection);
    }
    if (!nullToAbsent || bolusTotal != null) {
      map['bolus_total'] = Variable<double>(bolusTotal);
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    {
      final converter = $MealsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['log_id'] = Variable<int>(logId);
    if (!nullToAbsent || glucoseReadingId != null) {
      map['glucose_reading_id'] = Variable<int>(glucoseReadingId);
    }
    if (!nullToAbsent || insulinPresetId != null) {
      map['insulin_preset_id'] = Variable<int>(insulinPresetId);
    }
    return map;
  }

  MealsCompanion toCompanion(bool nullToAbsent) {
    return MealsCompanion(
      id: Value(id),
      netCarb: Value(netCarb),
      bolusCorrection: bolusCorrection == null && nullToAbsent
          ? const Value.absent()
          : Value(bolusCorrection),
      bolusTotal: bolusTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(bolusTotal),
      isFavorite: Value(isFavorite),
      type: Value(type),
      logId: Value(logId),
      glucoseReadingId: glucoseReadingId == null && nullToAbsent
          ? const Value.absent()
          : Value(glucoseReadingId),
      insulinPresetId: insulinPresetId == null && nullToAbsent
          ? const Value.absent()
          : Value(insulinPresetId),
    );
  }

  factory Meal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Meal(
      id: serializer.fromJson<int>(json['id']),
      netCarb: serializer.fromJson<double>(json['netCarb']),
      bolusCorrection: serializer.fromJson<double?>(json['bolusCorrection']),
      bolusTotal: serializer.fromJson<double?>(json['bolusTotal']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      type: $MealsTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      logId: serializer.fromJson<int>(json['logId']),
      glucoseReadingId: serializer.fromJson<int?>(json['glucoseReadingId']),
      insulinPresetId: serializer.fromJson<int?>(json['insulinPresetId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'netCarb': serializer.toJson<double>(netCarb),
      'bolusCorrection': serializer.toJson<double?>(bolusCorrection),
      'bolusTotal': serializer.toJson<double?>(bolusTotal),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'type': serializer.toJson<int>($MealsTable.$convertertype.toJson(type)),
      'logId': serializer.toJson<int>(logId),
      'glucoseReadingId': serializer.toJson<int?>(glucoseReadingId),
      'insulinPresetId': serializer.toJson<int?>(insulinPresetId),
    };
  }

  Meal copyWith(
          {int? id,
          double? netCarb,
          Value<double?> bolusCorrection = const Value.absent(),
          Value<double?> bolusTotal = const Value.absent(),
          bool? isFavorite,
          MealType? type,
          int? logId,
          Value<int?> glucoseReadingId = const Value.absent(),
          Value<int?> insulinPresetId = const Value.absent()}) =>
      Meal(
        id: id ?? this.id,
        netCarb: netCarb ?? this.netCarb,
        bolusCorrection: bolusCorrection.present
            ? bolusCorrection.value
            : this.bolusCorrection,
        bolusTotal: bolusTotal.present ? bolusTotal.value : this.bolusTotal,
        isFavorite: isFavorite ?? this.isFavorite,
        type: type ?? this.type,
        logId: logId ?? this.logId,
        glucoseReadingId: glucoseReadingId.present
            ? glucoseReadingId.value
            : this.glucoseReadingId,
        insulinPresetId: insulinPresetId.present
            ? insulinPresetId.value
            : this.insulinPresetId,
      );
  @override
  String toString() {
    return (StringBuffer('Meal(')
          ..write('id: $id, ')
          ..write('netCarb: $netCarb, ')
          ..write('bolusCorrection: $bolusCorrection, ')
          ..write('bolusTotal: $bolusTotal, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('type: $type, ')
          ..write('logId: $logId, ')
          ..write('glucoseReadingId: $glucoseReadingId, ')
          ..write('insulinPresetId: $insulinPresetId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, netCarb, bolusCorrection, bolusTotal,
      isFavorite, type, logId, glucoseReadingId, insulinPresetId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Meal &&
          other.id == this.id &&
          other.netCarb == this.netCarb &&
          other.bolusCorrection == this.bolusCorrection &&
          other.bolusTotal == this.bolusTotal &&
          other.isFavorite == this.isFavorite &&
          other.type == this.type &&
          other.logId == this.logId &&
          other.glucoseReadingId == this.glucoseReadingId &&
          other.insulinPresetId == this.insulinPresetId);
}

class MealsCompanion extends UpdateCompanion<Meal> {
  final Value<int> id;
  final Value<double> netCarb;
  final Value<double?> bolusCorrection;
  final Value<double?> bolusTotal;
  final Value<bool> isFavorite;
  final Value<MealType> type;
  final Value<int> logId;
  final Value<int?> glucoseReadingId;
  final Value<int?> insulinPresetId;
  const MealsCompanion({
    this.id = const Value.absent(),
    this.netCarb = const Value.absent(),
    this.bolusCorrection = const Value.absent(),
    this.bolusTotal = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.type = const Value.absent(),
    this.logId = const Value.absent(),
    this.glucoseReadingId = const Value.absent(),
    this.insulinPresetId = const Value.absent(),
  });
  MealsCompanion.insert({
    this.id = const Value.absent(),
    this.netCarb = const Value.absent(),
    this.bolusCorrection = const Value.absent(),
    this.bolusTotal = const Value.absent(),
    this.isFavorite = const Value.absent(),
    required MealType type,
    required int logId,
    this.glucoseReadingId = const Value.absent(),
    this.insulinPresetId = const Value.absent(),
  })  : type = Value(type),
        logId = Value(logId);
  static Insertable<Meal> custom({
    Expression<int>? id,
    Expression<double>? netCarb,
    Expression<double>? bolusCorrection,
    Expression<double>? bolusTotal,
    Expression<bool>? isFavorite,
    Expression<int>? type,
    Expression<int>? logId,
    Expression<int>? glucoseReadingId,
    Expression<int>? insulinPresetId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (netCarb != null) 'net_carb': netCarb,
      if (bolusCorrection != null) 'bolus_correction': bolusCorrection,
      if (bolusTotal != null) 'bolus_total': bolusTotal,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (type != null) 'type': type,
      if (logId != null) 'log_id': logId,
      if (glucoseReadingId != null) 'glucose_reading_id': glucoseReadingId,
      if (insulinPresetId != null) 'insulin_preset_id': insulinPresetId,
    });
  }

  MealsCompanion copyWith(
      {Value<int>? id,
      Value<double>? netCarb,
      Value<double?>? bolusCorrection,
      Value<double?>? bolusTotal,
      Value<bool>? isFavorite,
      Value<MealType>? type,
      Value<int>? logId,
      Value<int?>? glucoseReadingId,
      Value<int?>? insulinPresetId}) {
    return MealsCompanion(
      id: id ?? this.id,
      netCarb: netCarb ?? this.netCarb,
      bolusCorrection: bolusCorrection ?? this.bolusCorrection,
      bolusTotal: bolusTotal ?? this.bolusTotal,
      isFavorite: isFavorite ?? this.isFavorite,
      type: type ?? this.type,
      logId: logId ?? this.logId,
      glucoseReadingId: glucoseReadingId ?? this.glucoseReadingId,
      insulinPresetId: insulinPresetId ?? this.insulinPresetId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (netCarb.present) {
      map['net_carb'] = Variable<double>(netCarb.value);
    }
    if (bolusCorrection.present) {
      map['bolus_correction'] = Variable<double>(bolusCorrection.value);
    }
    if (bolusTotal.present) {
      map['bolus_total'] = Variable<double>(bolusTotal.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (type.present) {
      final converter = $MealsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (logId.present) {
      map['log_id'] = Variable<int>(logId.value);
    }
    if (glucoseReadingId.present) {
      map['glucose_reading_id'] = Variable<int>(glucoseReadingId.value);
    }
    if (insulinPresetId.present) {
      map['insulin_preset_id'] = Variable<int>(insulinPresetId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealsCompanion(')
          ..write('id: $id, ')
          ..write('netCarb: $netCarb, ')
          ..write('bolusCorrection: $bolusCorrection, ')
          ..write('bolusTotal: $bolusTotal, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('type: $type, ')
          ..write('logId: $logId, ')
          ..write('glucoseReadingId: $glucoseReadingId, ')
          ..write('insulinPresetId: $insulinPresetId')
          ..write(')'))
        .toString();
  }
}

class $MealItemsTable extends MealItems
    with TableInfo<$MealItemsTable, MealItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _mealIdMeta = const VerificationMeta('mealId');
  @override
  late final GeneratedColumn<int> mealId = GeneratedColumn<int>(
      'meal_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES meals (id)'));
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      check: () => quantity.isBiggerThanValue(0),
      type: DriftSqlType.double,
      requiredDuringInsert: true);
  static const VerificationMeta _foodUnitIdMeta =
      const VerificationMeta('foodUnitId');
  @override
  late final GeneratedColumn<int> foodUnitId = GeneratedColumn<int>(
      'food_unit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES food_units (id)'));
  @override
  List<GeneratedColumn> get $columns => [mealId, quantity, foodUnitId];
  @override
  String get aliasedName => _alias ?? 'meal_items';
  @override
  String get actualTableName => 'meal_items';
  @override
  VerificationContext validateIntegrity(Insertable<MealItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('meal_id')) {
      context.handle(_mealIdMeta,
          mealId.isAcceptableOrUnknown(data['meal_id']!, _mealIdMeta));
    } else if (isInserting) {
      context.missing(_mealIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('food_unit_id')) {
      context.handle(
          _foodUnitIdMeta,
          foodUnitId.isAcceptableOrUnknown(
              data['food_unit_id']!, _foodUnitIdMeta));
    } else if (isInserting) {
      context.missing(_foodUnitIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MealItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealItem(
      mealId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}meal_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      foodUnitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}food_unit_id'])!,
    );
  }

  @override
  $MealItemsTable createAlias(String alias) {
    return $MealItemsTable(attachedDatabase, alias);
  }
}

class MealItem extends DataClass implements Insertable<MealItem> {
  final int mealId;
  final double quantity;
  final int foodUnitId;
  const MealItem(
      {required this.mealId, required this.quantity, required this.foodUnitId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['meal_id'] = Variable<int>(mealId);
    map['quantity'] = Variable<double>(quantity);
    map['food_unit_id'] = Variable<int>(foodUnitId);
    return map;
  }

  MealItemsCompanion toCompanion(bool nullToAbsent) {
    return MealItemsCompanion(
      mealId: Value(mealId),
      quantity: Value(quantity),
      foodUnitId: Value(foodUnitId),
    );
  }

  factory MealItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealItem(
      mealId: serializer.fromJson<int>(json['mealId']),
      quantity: serializer.fromJson<double>(json['quantity']),
      foodUnitId: serializer.fromJson<int>(json['foodUnitId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mealId': serializer.toJson<int>(mealId),
      'quantity': serializer.toJson<double>(quantity),
      'foodUnitId': serializer.toJson<int>(foodUnitId),
    };
  }

  MealItem copyWith({int? mealId, double? quantity, int? foodUnitId}) =>
      MealItem(
        mealId: mealId ?? this.mealId,
        quantity: quantity ?? this.quantity,
        foodUnitId: foodUnitId ?? this.foodUnitId,
      );
  @override
  String toString() {
    return (StringBuffer('MealItem(')
          ..write('mealId: $mealId, ')
          ..write('quantity: $quantity, ')
          ..write('foodUnitId: $foodUnitId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(mealId, quantity, foodUnitId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealItem &&
          other.mealId == this.mealId &&
          other.quantity == this.quantity &&
          other.foodUnitId == this.foodUnitId);
}

class MealItemsCompanion extends UpdateCompanion<MealItem> {
  final Value<int> mealId;
  final Value<double> quantity;
  final Value<int> foodUnitId;
  const MealItemsCompanion({
    this.mealId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.foodUnitId = const Value.absent(),
  });
  MealItemsCompanion.insert({
    required int mealId,
    required double quantity,
    required int foodUnitId,
  })  : mealId = Value(mealId),
        quantity = Value(quantity),
        foodUnitId = Value(foodUnitId);
  static Insertable<MealItem> custom({
    Expression<int>? mealId,
    Expression<double>? quantity,
    Expression<int>? foodUnitId,
  }) {
    return RawValuesInsertable({
      if (mealId != null) 'meal_id': mealId,
      if (quantity != null) 'quantity': quantity,
      if (foodUnitId != null) 'food_unit_id': foodUnitId,
    });
  }

  MealItemsCompanion copyWith(
      {Value<int>? mealId, Value<double>? quantity, Value<int>? foodUnitId}) {
    return MealItemsCompanion(
      mealId: mealId ?? this.mealId,
      quantity: quantity ?? this.quantity,
      foodUnitId: foodUnitId ?? this.foodUnitId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (mealId.present) {
      map['meal_id'] = Variable<int>(mealId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (foodUnitId.present) {
      map['food_unit_id'] = Variable<int>(foodUnitId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealItemsCompanion(')
          ..write('mealId: $mealId, ')
          ..write('quantity: $quantity, ')
          ..write('foodUnitId: $foodUnitId')
          ..write(')'))
        .toString();
  }
}

abstract class _$CarbiDb extends GeneratedDatabase {
  _$CarbiDb(QueryExecutor e) : super(e);
  late final $SupportedLocalesTable supportedLocales =
      $SupportedLocalesTable(this);
  late final $TextContentsTable textContents = $TextContentsTable(this);
  late final $TranslationsTable translations = $TranslationsTable(this);
  late final $DailySheetsTable dailySheets = $DailySheetsTable(this);
  late final $LogsTable logs = $LogsTable(this);
  late final $GlucoseReadingsTable glucoseReadings =
      $GlucoseReadingsTable(this);
  late final $FoodsTable foods = $FoodsTable(this);
  late final $UnitsTable units = $UnitsTable(this);
  late final $FoodUnitsTable foodUnits = $FoodUnitsTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final $FoodTagsTable foodTags = $FoodTagsTable(this);
  late final $InsulinPresetsTable insulinPresets = $InsulinPresetsTable(this);
  late final $MealsTable meals = $MealsTable(this);
  late final $MealItemsTable mealItems = $MealItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        supportedLocales,
        textContents,
        translations,
        dailySheets,
        logs,
        glucoseReadings,
        foods,
        units,
        foodUnits,
        tags,
        foodTags,
        insulinPresets,
        meals,
        mealItems
      ];
}
