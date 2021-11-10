import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateAmountIsValidNumber(String input) {
  final inputNumber = double.tryParse(input);
  try {
    if (inputNumber! > 0) {
      return right(inputNumber);
    } else {
      return left(ValueFailure.negativeNumber(failedValue: inputNumber));
    }
  } catch (e) {
    return left(const ValueFailure.invalidNumber(failedValue: -1));
  }
}

Either<ValueFailure<double>, double> validateAmountIsValidMoney(String input) {
  final inputNumber = double.tryParse(input);
  try {
    return right(inputNumber!);
  } catch (e) {
    return left(const ValueFailure.invalidNumber(failedValue: -1));
  }
}