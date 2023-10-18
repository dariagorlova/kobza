// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentWord {
  String get word => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentWordCopyWith<CurrentWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWordCopyWith<$Res> {
  factory $CurrentWordCopyWith(
          CurrentWord value, $Res Function(CurrentWord) then) =
      _$CurrentWordCopyWithImpl<$Res, CurrentWord>;
  @useResult
  $Res call({String word});
}

/// @nodoc
class _$CurrentWordCopyWithImpl<$Res, $Val extends CurrentWord>
    implements $CurrentWordCopyWith<$Res> {
  _$CurrentWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWordImplCopyWith<$Res>
    implements $CurrentWordCopyWith<$Res> {
  factory _$$CurrentWordImplCopyWith(
          _$CurrentWordImpl value, $Res Function(_$CurrentWordImpl) then) =
      __$$CurrentWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$CurrentWordImplCopyWithImpl<$Res>
    extends _$CurrentWordCopyWithImpl<$Res, _$CurrentWordImpl>
    implements _$$CurrentWordImplCopyWith<$Res> {
  __$$CurrentWordImplCopyWithImpl(
      _$CurrentWordImpl _value, $Res Function(_$CurrentWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$CurrentWordImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentWordImpl implements _CurrentWord {
  const _$CurrentWordImpl({required this.word});

  @override
  final String word;

  @override
  String toString() {
    return 'CurrentWord(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWordImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWordImplCopyWith<_$CurrentWordImpl> get copyWith =>
      __$$CurrentWordImplCopyWithImpl<_$CurrentWordImpl>(this, _$identity);
}

abstract class _CurrentWord implements CurrentWord {
  const factory _CurrentWord({required final String word}) = _$CurrentWordImpl;

  @override
  String get word;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWordImplCopyWith<_$CurrentWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
