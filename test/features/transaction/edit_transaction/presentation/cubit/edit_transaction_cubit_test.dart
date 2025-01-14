import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockAddTransactionUseCase extends Mock implements AddTransactionUseCase {}

class MockDeleteTransactionUseCase extends Mock
    implements DeleteTransactionUseCase {}

class MockUpdateTransctionUseCase extends Mock
    implements UpdateTransactionUseCase {}

void main() {
  late AddTransactionUseCase _addTransaction;
  late EditTransactionState state;
  late UpdateTransactionUseCase _update;
  group('EditTransactionCubit', () {
    setUp(() {
      _addTransaction = MockAddTransactionUseCase();
      _update = MockUpdateTransctionUseCase();
      state = EditTransactionState(date: DateTime(2022));
    });

    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits Status.selectImage when attactment selection pressed',
      build: () => EditTransactionCubit(_addTransaction, _update),
      act: (bloc) => bloc.openMediaBottomSheet(),
      seed: () => state,
      expect: () => [state.copyWith(showMediaBottomSheet: true)],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits amount when amount field changed',
      build: () => EditTransactionCubit(_addTransaction, _update),
      act: (bloc) => bloc.amountChanged(amountStr: '5.0'),
      seed: () => state,
      expect: () => [
        state.copyWith(
          amount: const AmountText.dirty('5.0'),
          formzStatus: FormzStatus.invalid,
        )
      ],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits description when description field changed',
      build: () => EditTransactionCubit(_addTransaction, _update),
      act: (bloc) => bloc.descriptionChanged('some notes'),
      seed: () => state,
      expect: () => [state.copyWith(description: 'some notes')],
    );
    blocTest<EditTransactionCubit, EditTransactionState>(
      'emits reversed state when the repeat button toggled',
      build: () => EditTransactionCubit(_addTransaction, _update),
      act: (bloc) => bloc.repeatedButtonToggled(),
      seed: () => state,
      expect: () => [state.copyWith(isRepeated: true)],
    );
  });
}
