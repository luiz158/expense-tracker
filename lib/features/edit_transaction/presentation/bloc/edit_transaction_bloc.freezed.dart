// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTransactionEventCopyWith<$Res> {
  factory $EditTransactionEventCopyWith(EditTransactionEvent value,
          $Res Function(EditTransactionEvent) then) =
      _$EditTransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditTransactionEventCopyWithImpl<$Res>
    implements $EditTransactionEventCopyWith<$Res> {
  _$EditTransactionEventCopyWithImpl(this._value, this._then);

  final EditTransactionEvent _value;
  // ignore: unused_field
  final $Res Function(EditTransactionEvent) _then;
}

/// @nodoc
abstract class _$$SubmitNewTransactionCopyWith<$Res> {
  factory _$$SubmitNewTransactionCopyWith(_$SubmitNewTransaction value,
          $Res Function(_$SubmitNewTransaction) then) =
      __$$SubmitNewTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitNewTransactionCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$SubmitNewTransactionCopyWith<$Res> {
  __$$SubmitNewTransactionCopyWithImpl(_$SubmitNewTransaction _value,
      $Res Function(_$SubmitNewTransaction) _then)
      : super(_value, (v) => _then(v as _$SubmitNewTransaction));

  @override
  _$SubmitNewTransaction get _value => super._value as _$SubmitNewTransaction;
}

/// @nodoc

class _$SubmitNewTransaction implements SubmitNewTransaction {
  const _$SubmitNewTransaction();

  @override
  String toString() {
    return 'EditTransactionEvent.submitNewTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitNewTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return submitNewTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return submitNewTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (submitNewTransaction != null) {
      return submitNewTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return submitNewTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return submitNewTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (submitNewTransaction != null) {
      return submitNewTransaction(this);
    }
    return orElse();
  }
}

abstract class SubmitNewTransaction implements EditTransactionEvent {
  const factory SubmitNewTransaction() = _$SubmitNewTransaction;
}

/// @nodoc
abstract class _$$EditTransactionDeleteTransactionCopyWith<$Res> {
  factory _$$EditTransactionDeleteTransactionCopyWith(
          _$EditTransactionDeleteTransaction value,
          $Res Function(_$EditTransactionDeleteTransaction) then) =
      __$$EditTransactionDeleteTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTransactionDeleteTransactionCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionDeleteTransactionCopyWith<$Res> {
  __$$EditTransactionDeleteTransactionCopyWithImpl(
      _$EditTransactionDeleteTransaction _value,
      $Res Function(_$EditTransactionDeleteTransaction) _then)
      : super(_value, (v) => _then(v as _$EditTransactionDeleteTransaction));

  @override
  _$EditTransactionDeleteTransaction get _value =>
      super._value as _$EditTransactionDeleteTransaction;
}

/// @nodoc

class _$EditTransactionDeleteTransaction
    implements EditTransactionDeleteTransaction {
  const _$EditTransactionDeleteTransaction();

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionDeleteTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionDeleteTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionDeleteTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionDeleteTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionDeleteTransaction != null) {
      return editTransactionDeleteTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionDeleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionDeleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionDeleteTransaction != null) {
      return editTransactionDeleteTransaction(this);
    }
    return orElse();
  }
}

abstract class EditTransactionDeleteTransaction
    implements EditTransactionEvent {
  const factory EditTransactionDeleteTransaction() =
      _$EditTransactionDeleteTransaction;
}

/// @nodoc
abstract class _$$EditTransactionDescriptionChangedCopyWith<$Res> {
  factory _$$EditTransactionDescriptionChangedCopyWith(
          _$EditTransactionDescriptionChanged value,
          $Res Function(_$EditTransactionDescriptionChanged) then) =
      __$$EditTransactionDescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$EditTransactionDescriptionChangedCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionDescriptionChangedCopyWith<$Res> {
  __$$EditTransactionDescriptionChangedCopyWithImpl(
      _$EditTransactionDescriptionChanged _value,
      $Res Function(_$EditTransactionDescriptionChanged) _then)
      : super(_value, (v) => _then(v as _$EditTransactionDescriptionChanged));

  @override
  _$EditTransactionDescriptionChanged get _value =>
      super._value as _$EditTransactionDescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$EditTransactionDescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTransactionDescriptionChanged
    implements EditTransactionDescriptionChanged {
  const _$EditTransactionDescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionDescriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionDescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$EditTransactionDescriptionChangedCopyWith<
          _$EditTransactionDescriptionChanged>
      get copyWith => __$$EditTransactionDescriptionChangedCopyWithImpl<
          _$EditTransactionDescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionDescriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionDescriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionDescriptionChanged != null) {
      return editTransactionDescriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionDescriptionChanged != null) {
      return editTransactionDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class EditTransactionDescriptionChanged
    implements EditTransactionEvent {
  const factory EditTransactionDescriptionChanged(final String description) =
      _$EditTransactionDescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$$EditTransactionDescriptionChangedCopyWith<
          _$EditTransactionDescriptionChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionAmountChangedCopyWith<$Res> {
  factory _$$EditTransactionAmountChangedCopyWith(
          _$EditTransactionAmountChanged value,
          $Res Function(_$EditTransactionAmountChanged) then) =
      __$$EditTransactionAmountChangedCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class __$$EditTransactionAmountChangedCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionAmountChangedCopyWith<$Res> {
  __$$EditTransactionAmountChangedCopyWithImpl(
      _$EditTransactionAmountChanged _value,
      $Res Function(_$EditTransactionAmountChanged) _then)
      : super(_value, (v) => _then(v as _$EditTransactionAmountChanged));

  @override
  _$EditTransactionAmountChanged get _value =>
      super._value as _$EditTransactionAmountChanged;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_$EditTransactionAmountChanged(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTransactionAmountChanged implements EditTransactionAmountChanged {
  const _$EditTransactionAmountChanged(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionAmountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionAmountChanged &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$EditTransactionAmountChangedCopyWith<_$EditTransactionAmountChanged>
      get copyWith => __$$EditTransactionAmountChangedCopyWithImpl<
          _$EditTransactionAmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionAmountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionAmountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionAmountChanged != null) {
      return editTransactionAmountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionAmountChanged != null) {
      return editTransactionAmountChanged(this);
    }
    return orElse();
  }
}

abstract class EditTransactionAmountChanged implements EditTransactionEvent {
  const factory EditTransactionAmountChanged(final String amount) =
      _$EditTransactionAmountChanged;

  String get amount;
  @JsonKey(ignore: true)
  _$$EditTransactionAmountChangedCopyWith<_$EditTransactionAmountChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionRepeatToggledCopyWith<$Res> {
  factory _$$EditTransactionRepeatToggledCopyWith(
          _$EditTransactionRepeatToggled value,
          $Res Function(_$EditTransactionRepeatToggled) then) =
      __$$EditTransactionRepeatToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTransactionRepeatToggledCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionRepeatToggledCopyWith<$Res> {
  __$$EditTransactionRepeatToggledCopyWithImpl(
      _$EditTransactionRepeatToggled _value,
      $Res Function(_$EditTransactionRepeatToggled) _then)
      : super(_value, (v) => _then(v as _$EditTransactionRepeatToggled));

  @override
  _$EditTransactionRepeatToggled get _value =>
      super._value as _$EditTransactionRepeatToggled;
}

/// @nodoc

class _$EditTransactionRepeatToggled implements EditTransactionRepeatToggled {
  const _$EditTransactionRepeatToggled();

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionRepeatToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionRepeatToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionRepeatToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionRepeatToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionRepeatToggled != null) {
      return editTransactionRepeatToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionRepeatToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionRepeatToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionRepeatToggled != null) {
      return editTransactionRepeatToggled(this);
    }
    return orElse();
  }
}

abstract class EditTransactionRepeatToggled implements EditTransactionEvent {
  const factory EditTransactionRepeatToggled() = _$EditTransactionRepeatToggled;
}

/// @nodoc
abstract class _$$EditTransactionCategoryChangedCopyWith<$Res> {
  factory _$$EditTransactionCategoryChangedCopyWith(
          _$EditTransactionCategoryChanged value,
          $Res Function(_$EditTransactionCategoryChanged) then) =
      __$$EditTransactionCategoryChangedCopyWithImpl<$Res>;
  $Res call({Category category});
}

/// @nodoc
class __$$EditTransactionCategoryChangedCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionCategoryChangedCopyWith<$Res> {
  __$$EditTransactionCategoryChangedCopyWithImpl(
      _$EditTransactionCategoryChanged _value,
      $Res Function(_$EditTransactionCategoryChanged) _then)
      : super(_value, (v) => _then(v as _$EditTransactionCategoryChanged));

  @override
  _$EditTransactionCategoryChanged get _value =>
      super._value as _$EditTransactionCategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$EditTransactionCategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$EditTransactionCategoryChanged
    implements EditTransactionCategoryChanged {
  const _$EditTransactionCategoryChanged(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionCategoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionCategoryChanged &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$EditTransactionCategoryChangedCopyWith<_$EditTransactionCategoryChanged>
      get copyWith => __$$EditTransactionCategoryChangedCopyWithImpl<
          _$EditTransactionCategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionCategoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionCategoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionCategoryChanged != null) {
      return editTransactionCategoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionCategoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionCategoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionCategoryChanged != null) {
      return editTransactionCategoryChanged(this);
    }
    return orElse();
  }
}

abstract class EditTransactionCategoryChanged implements EditTransactionEvent {
  const factory EditTransactionCategoryChanged(final Category category) =
      _$EditTransactionCategoryChanged;

  Category get category;
  @JsonKey(ignore: true)
  _$$EditTransactionCategoryChangedCopyWith<_$EditTransactionCategoryChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionImageChosenCopyWith<$Res> {
  factory _$$EditTransactionImageChosenCopyWith(
          _$EditTransactionImageChosen value,
          $Res Function(_$EditTransactionImageChosen) then) =
      __$$EditTransactionImageChosenCopyWithImpl<$Res>;
  $Res call({XFile imgStr});
}

/// @nodoc
class __$$EditTransactionImageChosenCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionImageChosenCopyWith<$Res> {
  __$$EditTransactionImageChosenCopyWithImpl(
      _$EditTransactionImageChosen _value,
      $Res Function(_$EditTransactionImageChosen) _then)
      : super(_value, (v) => _then(v as _$EditTransactionImageChosen));

  @override
  _$EditTransactionImageChosen get _value =>
      super._value as _$EditTransactionImageChosen;

  @override
  $Res call({
    Object? imgStr = freezed,
  }) {
    return _then(_$EditTransactionImageChosen(
      imgStr == freezed
          ? _value.imgStr
          : imgStr // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$EditTransactionImageChosen implements EditTransactionImageChosen {
  const _$EditTransactionImageChosen(this.imgStr);

  @override
  final XFile imgStr;

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionImageChosen(imgStr: $imgStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionImageChosen &&
            const DeepCollectionEquality().equals(other.imgStr, imgStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imgStr));

  @JsonKey(ignore: true)
  @override
  _$$EditTransactionImageChosenCopyWith<_$EditTransactionImageChosen>
      get copyWith => __$$EditTransactionImageChosenCopyWithImpl<
          _$EditTransactionImageChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionImageChosen(imgStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionImageChosen?.call(imgStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionImageChosen != null) {
      return editTransactionImageChosen(imgStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionImageChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionImageChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionImageChosen != null) {
      return editTransactionImageChosen(this);
    }
    return orElse();
  }
}

abstract class EditTransactionImageChosen implements EditTransactionEvent {
  const factory EditTransactionImageChosen(final XFile imgStr) =
      _$EditTransactionImageChosen;

  XFile get imgStr;
  @JsonKey(ignore: true)
  _$$EditTransactionImageChosenCopyWith<_$EditTransactionImageChosen>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTransactionSelectAttachmentCloseCopyWith<$Res> {
  factory _$$EditTransactionSelectAttachmentCloseCopyWith(
          _$EditTransactionSelectAttachmentClose value,
          $Res Function(_$EditTransactionSelectAttachmentClose) then) =
      __$$EditTransactionSelectAttachmentCloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTransactionSelectAttachmentCloseCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionSelectAttachmentCloseCopyWith<$Res> {
  __$$EditTransactionSelectAttachmentCloseCopyWithImpl(
      _$EditTransactionSelectAttachmentClose _value,
      $Res Function(_$EditTransactionSelectAttachmentClose) _then)
      : super(
            _value, (v) => _then(v as _$EditTransactionSelectAttachmentClose));

  @override
  _$EditTransactionSelectAttachmentClose get _value =>
      super._value as _$EditTransactionSelectAttachmentClose;
}

/// @nodoc

class _$EditTransactionSelectAttachmentClose
    implements EditTransactionSelectAttachmentClose {
  const _$EditTransactionSelectAttachmentClose();

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionSelectAttachmentClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionSelectAttachmentClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachmentClose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachmentClose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionSelectAttachmentClose != null) {
      return editTransactionSelectAttachmentClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachmentClose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachmentClose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionSelectAttachmentClose != null) {
      return editTransactionSelectAttachmentClose(this);
    }
    return orElse();
  }
}

abstract class EditTransactionSelectAttachmentClose
    implements EditTransactionEvent {
  const factory EditTransactionSelectAttachmentClose() =
      _$EditTransactionSelectAttachmentClose;
}

/// @nodoc
abstract class _$$EditTransactionSelectAttachmentCopyWith<$Res> {
  factory _$$EditTransactionSelectAttachmentCopyWith(
          _$EditTransactionSelectAttachment value,
          $Res Function(_$EditTransactionSelectAttachment) then) =
      __$$EditTransactionSelectAttachmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTransactionSelectAttachmentCopyWithImpl<$Res>
    extends _$EditTransactionEventCopyWithImpl<$Res>
    implements _$$EditTransactionSelectAttachmentCopyWith<$Res> {
  __$$EditTransactionSelectAttachmentCopyWithImpl(
      _$EditTransactionSelectAttachment _value,
      $Res Function(_$EditTransactionSelectAttachment) _then)
      : super(_value, (v) => _then(v as _$EditTransactionSelectAttachment));

  @override
  _$EditTransactionSelectAttachment get _value =>
      super._value as _$EditTransactionSelectAttachment;
}

/// @nodoc

class _$EditTransactionSelectAttachment
    implements EditTransactionSelectAttachment {
  const _$EditTransactionSelectAttachment();

  @override
  String toString() {
    return 'EditTransactionEvent.editTransactionSelectAttachment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTransactionSelectAttachment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitNewTransaction,
    required TResult Function() editTransactionDeleteTransaction,
    required TResult Function(String description)
        editTransactionDescriptionChanged,
    required TResult Function(String amount) editTransactionAmountChanged,
    required TResult Function() editTransactionRepeatToggled,
    required TResult Function(Category category) editTransactionCategoryChanged,
    required TResult Function(XFile imgStr) editTransactionImageChosen,
    required TResult Function() editTransactionSelectAttachmentClose,
    required TResult Function() editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitNewTransaction,
    TResult Function()? editTransactionDeleteTransaction,
    TResult Function(String description)? editTransactionDescriptionChanged,
    TResult Function(String amount)? editTransactionAmountChanged,
    TResult Function()? editTransactionRepeatToggled,
    TResult Function(Category category)? editTransactionCategoryChanged,
    TResult Function(XFile imgStr)? editTransactionImageChosen,
    TResult Function()? editTransactionSelectAttachmentClose,
    TResult Function()? editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionSelectAttachment != null) {
      return editTransactionSelectAttachment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitNewTransaction value) submitNewTransaction,
    required TResult Function(EditTransactionDeleteTransaction value)
        editTransactionDeleteTransaction,
    required TResult Function(EditTransactionDescriptionChanged value)
        editTransactionDescriptionChanged,
    required TResult Function(EditTransactionAmountChanged value)
        editTransactionAmountChanged,
    required TResult Function(EditTransactionRepeatToggled value)
        editTransactionRepeatToggled,
    required TResult Function(EditTransactionCategoryChanged value)
        editTransactionCategoryChanged,
    required TResult Function(EditTransactionImageChosen value)
        editTransactionImageChosen,
    required TResult Function(EditTransactionSelectAttachmentClose value)
        editTransactionSelectAttachmentClose,
    required TResult Function(EditTransactionSelectAttachment value)
        editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
  }) {
    return editTransactionSelectAttachment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitNewTransaction value)? submitNewTransaction,
    TResult Function(EditTransactionDeleteTransaction value)?
        editTransactionDeleteTransaction,
    TResult Function(EditTransactionDescriptionChanged value)?
        editTransactionDescriptionChanged,
    TResult Function(EditTransactionAmountChanged value)?
        editTransactionAmountChanged,
    TResult Function(EditTransactionRepeatToggled value)?
        editTransactionRepeatToggled,
    TResult Function(EditTransactionCategoryChanged value)?
        editTransactionCategoryChanged,
    TResult Function(EditTransactionImageChosen value)?
        editTransactionImageChosen,
    TResult Function(EditTransactionSelectAttachmentClose value)?
        editTransactionSelectAttachmentClose,
    TResult Function(EditTransactionSelectAttachment value)?
        editTransactionSelectAttachment,
    required TResult orElse(),
  }) {
    if (editTransactionSelectAttachment != null) {
      return editTransactionSelectAttachment(this);
    }
    return orElse();
  }
}

abstract class EditTransactionSelectAttachment implements EditTransactionEvent {
  const factory EditTransactionSelectAttachment() =
      _$EditTransactionSelectAttachment;
}

/// @nodoc
mixin _$EditTransactionState {
  bool get isRepeated => throw _privateConstructorUsedError;
  bool get isNewTransaction => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  XFile? get imgFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTransactionStateCopyWith<EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTransactionStateCopyWith<$Res> {
  factory $EditTransactionStateCopyWith(EditTransactionState value,
          $Res Function(EditTransactionState) then) =
      _$EditTransactionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isRepeated,
      bool isNewTransaction,
      Status status,
      double amount,
      String description,
      Category? category,
      XFile? imgFile});
}

/// @nodoc
class _$EditTransactionStateCopyWithImpl<$Res>
    implements $EditTransactionStateCopyWith<$Res> {
  _$EditTransactionStateCopyWithImpl(this._value, this._then);

  final EditTransactionState _value;
  // ignore: unused_field
  final $Res Function(EditTransactionState) _then;

  @override
  $Res call({
    Object? isRepeated = freezed,
    Object? isNewTransaction = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? imgFile = freezed,
  }) {
    return _then(_value.copyWith(
      isRepeated: isRepeated == freezed
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: isNewTransaction == freezed
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      imgFile: imgFile == freezed
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
abstract class _$$_EditTransactionStateCopyWith<$Res>
    implements $EditTransactionStateCopyWith<$Res> {
  factory _$$_EditTransactionStateCopyWith(_$_EditTransactionState value,
          $Res Function(_$_EditTransactionState) then) =
      __$$_EditTransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isRepeated,
      bool isNewTransaction,
      Status status,
      double amount,
      String description,
      Category? category,
      XFile? imgFile});
}

/// @nodoc
class __$$_EditTransactionStateCopyWithImpl<$Res>
    extends _$EditTransactionStateCopyWithImpl<$Res>
    implements _$$_EditTransactionStateCopyWith<$Res> {
  __$$_EditTransactionStateCopyWithImpl(_$_EditTransactionState _value,
      $Res Function(_$_EditTransactionState) _then)
      : super(_value, (v) => _then(v as _$_EditTransactionState));

  @override
  _$_EditTransactionState get _value => super._value as _$_EditTransactionState;

  @override
  $Res call({
    Object? isRepeated = freezed,
    Object? isNewTransaction = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? imgFile = freezed,
  }) {
    return _then(_$_EditTransactionState(
      isRepeated: isRepeated == freezed
          ? _value.isRepeated
          : isRepeated // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewTransaction: isNewTransaction == freezed
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      imgFile: imgFile == freezed
          ? _value.imgFile
          : imgFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_EditTransactionState implements _EditTransactionState {
  const _$_EditTransactionState(
      {this.isRepeated = false,
      this.isNewTransaction = false,
      this.status = Status.initital,
      this.amount = 0,
      this.description = '',
      this.category,
      this.imgFile});

  @override
  @JsonKey()
  final bool isRepeated;
  @override
  @JsonKey()
  final bool isNewTransaction;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final String description;
  @override
  final Category? category;
  @override
  final XFile? imgFile;

  @override
  String toString() {
    return 'EditTransactionState(isRepeated: $isRepeated, isNewTransaction: $isNewTransaction, status: $status, amount: $amount, description: $description, category: $category, imgFile: $imgFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTransactionState &&
            const DeepCollectionEquality()
                .equals(other.isRepeated, isRepeated) &&
            const DeepCollectionEquality()
                .equals(other.isNewTransaction, isNewTransaction) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.imgFile, imgFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isRepeated),
      const DeepCollectionEquality().hash(isNewTransaction),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(imgFile));

  @JsonKey(ignore: true)
  @override
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      __$$_EditTransactionStateCopyWithImpl<_$_EditTransactionState>(
          this, _$identity);
}

abstract class _EditTransactionState implements EditTransactionState {
  const factory _EditTransactionState(
      {final bool isRepeated,
      final bool isNewTransaction,
      final Status status,
      final double amount,
      final String description,
      final Category? category,
      final XFile? imgFile}) = _$_EditTransactionState;

  @override
  bool get isRepeated;
  @override
  bool get isNewTransaction;
  @override
  Status get status;
  @override
  double get amount;
  @override
  String get description;
  @override
  Category? get category;
  @override
  XFile? get imgFile;
  @override
  @JsonKey(ignore: true)
  _$$_EditTransactionStateCopyWith<_$_EditTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
