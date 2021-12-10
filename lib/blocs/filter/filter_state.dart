part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.filterLoading() = FilterLoading;
  const factory FilterState.filterLoaded(
    List<Transaction> transactions,
    ActiveFilter activeFilter,
    ActiveSort activeSort,
  ) = FilterLoaded;
}

enum ActiveFilter { empty, income, expense }
enum ActiveSort { highest, lowest, newest, oldest }