import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String payeeName;
  final DateTime dateCreated;
  final double amount;
  final String category;

  Transaction({
    required this.payeeName,
    required this.dateCreated,
    required this.amount,
    required this.category,
  });

  get date => DateFormat.MMMd().format(dateCreated);
}

enum TransactionType {
  Expense,
  Income,
}

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
  // Food
  // Education,
  // Grocecies,
  // Entertainment,
}