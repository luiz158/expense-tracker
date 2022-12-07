// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Category extends DataClass implements Insertable<Category> {
  final String name;
  final int color;
  final IconData icon;
  const Category({required this.name, required this.color, required this.icon});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['color'] = Variable<int>(color);
    {
      final converter = $CategoriesTable.$converter0;
      map['icon'] = Variable<String>(converter.toSql(icon));
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      name: Value(name),
      color: Value(color),
      icon: Value(icon),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
      icon: serializer.fromJson<IconData>(json['icon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
      'icon': serializer.toJson<IconData>(icon),
    };
  }

  Category copyWith({String? name, int? color, IconData? icon}) => Category(
        name: name ?? this.name,
        color: color ?? this.color,
        icon: icon ?? this.icon,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, color, icon);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.name == this.name &&
          other.color == this.color &&
          other.icon == this.icon);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> name;
  final Value<int> color;
  final Value<IconData> icon;
  const CategoriesCompanion({
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String name,
    required int color,
    required IconData icon,
  })  : name = Value(name),
        color = Value(color),
        icon = Value(icon);
  static Insertable<Category> custom({
    Expression<String>? name,
    Expression<int>? color,
    Expression<String>? icon,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
    });
  }

  CategoriesCompanion copyWith(
      {Value<String>? name, Value<int>? color, Value<IconData>? icon}) {
    return CategoriesCompanion(
      name: name ?? this.name,
      color: color ?? this.color,
      icon: icon ?? this.icon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (icon.present) {
      final converter = $CategoriesTable.$converter0;
      map['icon'] = Variable<String>(converter.toSql(icon.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumnWithTypeConverter<IconData, String> icon =
      GeneratedColumn<String>('icon', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<IconData>($CategoriesTable.$converter0);
  @override
  List<GeneratedColumn> get $columns => [name, color, icon];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    context.handle(_iconMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
      icon: $CategoriesTable.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}icon'])!),
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }

  static TypeConverter<IconData, String> $converter0 =
      const IconDataConverter();
}

class Transaction extends DataClass implements Insertable<Transaction> {
  final String id;
  final String name;
  final String walletId;
  final String? description;
  final String image;
  final double amount;
  final DateTime transactionCreatedAt;
  final bool isRepeated;
  const Transaction(
      {required this.id,
      required this.name,
      required this.walletId,
      this.description,
      required this.image,
      required this.amount,
      required this.transactionCreatedAt,
      required this.isRepeated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['wallet_id'] = Variable<String>(walletId);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['image'] = Variable<String>(image);
    map['amount'] = Variable<double>(amount);
    map['transaction_created_at'] = Variable<DateTime>(transactionCreatedAt);
    map['is_repeated'] = Variable<bool>(isRepeated);
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      id: Value(id),
      name: Value(name),
      walletId: Value(walletId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      image: Value(image),
      amount: Value(amount),
      transactionCreatedAt: Value(transactionCreatedAt),
      isRepeated: Value(isRepeated),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transaction(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      walletId: serializer.fromJson<String>(json['walletId']),
      description: serializer.fromJson<String?>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      amount: serializer.fromJson<double>(json['amount']),
      transactionCreatedAt:
          serializer.fromJson<DateTime>(json['transactionCreatedAt']),
      isRepeated: serializer.fromJson<bool>(json['isRepeated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'walletId': serializer.toJson<String>(walletId),
      'description': serializer.toJson<String?>(description),
      'image': serializer.toJson<String>(image),
      'amount': serializer.toJson<double>(amount),
      'transactionCreatedAt': serializer.toJson<DateTime>(transactionCreatedAt),
      'isRepeated': serializer.toJson<bool>(isRepeated),
    };
  }

  Transaction copyWith(
          {String? id,
          String? name,
          String? walletId,
          Value<String?> description = const Value.absent(),
          String? image,
          double? amount,
          DateTime? transactionCreatedAt,
          bool? isRepeated}) =>
      Transaction(
        id: id ?? this.id,
        name: name ?? this.name,
        walletId: walletId ?? this.walletId,
        description: description.present ? description.value : this.description,
        image: image ?? this.image,
        amount: amount ?? this.amount,
        transactionCreatedAt: transactionCreatedAt ?? this.transactionCreatedAt,
        isRepeated: isRepeated ?? this.isRepeated,
      );
  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('walletId: $walletId, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('amount: $amount, ')
          ..write('transactionCreatedAt: $transactionCreatedAt, ')
          ..write('isRepeated: $isRepeated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, walletId, description, image,
      amount, transactionCreatedAt, isRepeated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.id == this.id &&
          other.name == this.name &&
          other.walletId == this.walletId &&
          other.description == this.description &&
          other.image == this.image &&
          other.amount == this.amount &&
          other.transactionCreatedAt == this.transactionCreatedAt &&
          other.isRepeated == this.isRepeated);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> walletId;
  final Value<String?> description;
  final Value<String> image;
  final Value<double> amount;
  final Value<DateTime> transactionCreatedAt;
  final Value<bool> isRepeated;
  const TransactionsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.walletId = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.amount = const Value.absent(),
    this.transactionCreatedAt = const Value.absent(),
    this.isRepeated = const Value.absent(),
  });
  TransactionsCompanion.insert({
    required String id,
    required String name,
    required String walletId,
    this.description = const Value.absent(),
    required String image,
    required double amount,
    required DateTime transactionCreatedAt,
    required bool isRepeated,
  })  : id = Value(id),
        name = Value(name),
        walletId = Value(walletId),
        image = Value(image),
        amount = Value(amount),
        transactionCreatedAt = Value(transactionCreatedAt),
        isRepeated = Value(isRepeated);
  static Insertable<Transaction> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? walletId,
    Expression<String>? description,
    Expression<String>? image,
    Expression<double>? amount,
    Expression<DateTime>? transactionCreatedAt,
    Expression<bool>? isRepeated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (walletId != null) 'wallet_id': walletId,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (amount != null) 'amount': amount,
      if (transactionCreatedAt != null)
        'transaction_created_at': transactionCreatedAt,
      if (isRepeated != null) 'is_repeated': isRepeated,
    });
  }

  TransactionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? walletId,
      Value<String?>? description,
      Value<String>? image,
      Value<double>? amount,
      Value<DateTime>? transactionCreatedAt,
      Value<bool>? isRepeated}) {
    return TransactionsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      walletId: walletId ?? this.walletId,
      description: description ?? this.description,
      image: image ?? this.image,
      amount: amount ?? this.amount,
      transactionCreatedAt: transactionCreatedAt ?? this.transactionCreatedAt,
      isRepeated: isRepeated ?? this.isRepeated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (walletId.present) {
      map['wallet_id'] = Variable<String>(walletId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (transactionCreatedAt.present) {
      map['transaction_created_at'] =
          Variable<DateTime>(transactionCreatedAt.value);
    }
    if (isRepeated.present) {
      map['is_repeated'] = Variable<bool>(isRepeated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('walletId: $walletId, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('amount: $amount, ')
          ..write('transactionCreatedAt: $transactionCreatedAt, ')
          ..write('isRepeated: $isRepeated')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _walletIdMeta = const VerificationMeta('walletId');
  @override
  late final GeneratedColumn<String> walletId = GeneratedColumn<String>(
      'wallet_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _transactionCreatedAtMeta =
      const VerificationMeta('transactionCreatedAt');
  @override
  late final GeneratedColumn<DateTime> transactionCreatedAt =
      GeneratedColumn<DateTime>('transaction_created_at', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _isRepeatedMeta = const VerificationMeta('isRepeated');
  @override
  late final GeneratedColumn<bool> isRepeated = GeneratedColumn<bool>(
      'is_repeated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_repeated IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        walletId,
        description,
        image,
        amount,
        transactionCreatedAt,
        isRepeated
      ];
  @override
  String get aliasedName => _alias ?? 'transactions';
  @override
  String get actualTableName => 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('wallet_id')) {
      context.handle(_walletIdMeta,
          walletId.isAcceptableOrUnknown(data['wallet_id']!, _walletIdMeta));
    } else if (isInserting) {
      context.missing(_walletIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('transaction_created_at')) {
      context.handle(
          _transactionCreatedAtMeta,
          transactionCreatedAt.isAcceptableOrUnknown(
              data['transaction_created_at']!, _transactionCreatedAtMeta));
    } else if (isInserting) {
      context.missing(_transactionCreatedAtMeta);
    }
    if (data.containsKey('is_repeated')) {
      context.handle(
          _isRepeatedMeta,
          isRepeated.isAcceptableOrUnknown(
              data['is_repeated']!, _isRepeatedMeta));
    } else if (isInserting) {
      context.missing(_isRepeatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      walletId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}wallet_id'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      amount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      transactionCreatedAt: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}transaction_created_at'])!,
      isRepeated: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}is_repeated'])!,
    );
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final CategoriesDao categoriesDao = CategoriesDao(this as MyDatabase);
  late final TransactionsDao transactionsDao =
      TransactionsDao(this as MyDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categories, transactions];
}