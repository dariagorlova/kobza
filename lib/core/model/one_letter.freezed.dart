// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_letter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneLetter {
  String get letter => throw _privateConstructorUsedError;
  LetterState get letterState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneLetterCopyWith<OneLetter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneLetterCopyWith<$Res> {
  factory $OneLetterCopyWith(OneLetter value, $Res Function(OneLetter) then) =
      _$OneLetterCopyWithImpl<$Res, OneLetter>;
  @useResult
  $Res call({String letter, LetterState letterState});
}

/// @nodoc
class _$OneLetterCopyWithImpl<$Res, $Val extends OneLetter>
    implements $OneLetterCopyWith<$Res> {
  _$OneLetterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letter = null,
    Object? letterState = null,
  }) {
    return _then(_value.copyWith(
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      letterState: null == letterState
          ? _value.letterState
          : letterState // ignore: cast_nullable_to_non_nullable
              as LetterState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneLetterImplCopyWith<$Res>
    implements $OneLetterCopyWith<$Res> {
  factory _$$OneLetterImplCopyWith(
          _$OneLetterImpl value, $Res Function(_$OneLetterImpl) then) =
      __$$OneLetterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String letter, LetterState letterState});
}

/// @nodoc
class __$$OneLetterImplCopyWithImpl<$Res>
    extends _$OneLetterCopyWithImpl<$Res, _$OneLetterImpl>
    implements _$$OneLetterImplCopyWith<$Res> {
  __$$OneLetterImplCopyWithImpl(
      _$OneLetterImpl _value, $Res Function(_$OneLetterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letter = null,
    Object? letterState = null,
  }) {
    return _then(_$OneLetterImpl(
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      letterState: null == letterState
          ? _value.letterState
          : letterState // ignore: cast_nullable_to_non_nullable
              as LetterState,
    ));
  }
}

/// @nodoc

class _$OneLetterImpl implements _OneLetter {
  const _$OneLetterImpl(
      {this.letter = '', this.letterState = LetterState.initial});

  @override
  @JsonKey()
  final String letter;
  @override
  @JsonKey()
  final LetterState letterState;

  @override
  String toString() {
    return 'OneLetter(letter: $letter, letterState: $letterState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneLetterImpl &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.letterState, letterState) ||
                other.letterState == letterState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, letter, letterState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneLetterImplCopyWith<_$OneLetterImpl> get copyWith =>
      __$$OneLetterImplCopyWithImpl<_$OneLetterImpl>(this, _$identity);
}

abstract class _OneLetter implements OneLetter {
  const factory _OneLetter(
      {final String letter, final LetterState letterState}) = _$OneLetterImpl;

  @override
  String get letter;
  @override
  LetterState get letterState;
  @override
  @JsonKey(ignore: true)
  _$$OneLetterImplCopyWith<_$OneLetterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
