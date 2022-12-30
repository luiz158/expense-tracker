import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String name,
    required IconData icon,
    required Color color,
    required CategoryType categoryType,
  }) = _CategoryEntity;

  const CategoryEntity._();

  Color get backgroundColor => backgroundColor.withOpacity(0.2);

  Iterable<TransactionEntity> filteredTransactions(
    Iterable<TransactionEntity> transactions,
  ) {
    return transactions.where((element) => element.category == this);
  }
}

enum CategoryType { expense, income }
