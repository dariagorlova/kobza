// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  int get letterState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneLetterCopyWith<OneLetter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneLetterCopyWith<$Res> {
  factory $OneLetterCopyWith(OneLetter value, $Res Function(OneLetter) then) =
      _$OneLetterCopyWithImpl<$Res>;
  $Res call({String letter, int letterState});
}

/// @nodoc
class _$OneLetterCopyWithImpl<$Res> implements $OneLetterCopyWith<$Res> {
  _$OneLetterCopyWithImpl(this._value, this._then);

  final OneLetter _value;
  // ignore: unused_field
  final $Res Function(OneLetter) _then;

  @override
  $Res call({
    Object? letter = freezed,
    Object? letterState = freezed,
  }) {
    return _then(_value.copyWith(
      letter: letter == freezed
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      letterState: letterState == freezed
          ? _value.letterState
          : letterState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OneLetterCopyWith<$Res> implements $OneLetterCopyWith<$Res> {
  factory _$$_OneLetterCopyWith(
          _$_OneLetter value, $Res Function(_$_OneLetter) then) =
      __$$_OneLetterCopyWithImpl<$Res>;
  @override
  $Res call({String letter, int letterState});
}

/// @nodoc
class __$$_OneLetterCopyWithImpl<$Res> extends _$OneLetterCopyWithImpl<$Res>
    implements _$$_OneLetterCopyWith<$Res> {
  __$$_OneLetterCopyWithImpl(
      _$_OneLetter _value, $Res Function(_$_OneLetter) _then)
      : super(_value, (v) => _then(v as _$_OneLetter));

  @override
  _$_OneLetter get _value => super._value as _$_OneLetter;

  @override
  $Res call({
    Object? letter = freezed,
    Object? letterState = freezed,
  }) {
    return _then(_$_OneLetter(
      letter: letter == freezed
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      letterState: letterState == freezed
          ? _value.letterState
          : letterState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OneLetter implements _OneLetter {
  const _$_OneLetter({required this.letter, required this.letterState});

  @override
  final String letter;
  @override
  final int letterState;

  @override
  String toString() {
    return 'OneLetter(letter: $letter, letterState: $letterState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneLetter &&
            const DeepCollectionEquality().equals(other.letter, letter) &&
            const DeepCollectionEquality()
                .equals(other.letterState, letterState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(letter),
      const DeepCollectionEquality().hash(letterState));

  @JsonKey(ignore: true)
  @override
  _$$_OneLetterCopyWith<_$_OneLetter> get copyWith =>
      __$$_OneLetterCopyWithImpl<_$_OneLetter>(this, _$identity);
}

abstract class _OneLetter implements OneLetter {
  const factory _OneLetter(
      {required final String letter,
      required final int letterState}) = _$_OneLetter;

  @override
  String get letter => throw _privateConstructorUsedError;
  @override
  int get letterState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OneLetterCopyWith<_$_OneLetter> get copyWith =>
      throw _privateConstructorUsedError;
}
