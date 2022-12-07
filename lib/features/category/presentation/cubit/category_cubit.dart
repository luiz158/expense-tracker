import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/category.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._repo) : super(const CategoryState()) {
    load();
  }
  final ICategoryRepository _repo;
  late StreamSubscription<List<CategoryEntity>> _streamSubscription;

  Future<void> load() async {
    final c = _repo.watchAllCategories();

    _streamSubscription = c.listen((event) {
      emit(state.copyWith(categories: event));
    });
  }

  Future<void> addNewCategory() async {
    final result = await _repo.addNewCategory(
      const CategoryEntity(
        name: 'name',
        color: Colors.transparent,
        icon: Icons.abc,
      ),
    );
    result.fold(
      (l) {
        emit(state.copyWith(addCategoryErrorMessage: l.toString()));
      },
      (r) {},
    );
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
