part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default([]) List<CategoryEntity> categories,
    String? addCategoryErrorMessage,
    String? name,
    IconData? icon,
  }) = _CategoryState;
}
