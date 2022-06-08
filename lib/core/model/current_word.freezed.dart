// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$CurrentWordCopyWithImpl<$Res>;
  $Res call({String word});
}

/// @nodoc
class _$CurrentWordCopyWithImpl<$Res> implements $CurrentWordCopyWith<$Res> {
  _$CurrentWordCopyWithImpl(this._value, this._then);

  final CurrentWord _value;
  // ignore: unused_field
  final $Res Function(CurrentWord) _then;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentWordCopyWith<$Res>
    implements $CurrentWordCopyWith<$Res> {
  factory _$$_CurrentWordCopyWith(
          _$_CurrentWord value, $Res Function(_$_CurrentWord) then) =
      __$$_CurrentWordCopyWithImpl<$Res>;
  @override
  $Res call({String word});
}

/// @nodoc
class __$$_CurrentWordCopyWithImpl<$Res> extends _$CurrentWordCopyWithImpl<$Res>
    implements _$$_CurrentWordCopyWith<$Res> {
  __$$_CurrentWordCopyWithImpl(
      _$_CurrentWord _value, $Res Function(_$_CurrentWord) _then)
      : super(_value, (v) => _then(v as _$_CurrentWord));

  @override
  _$_CurrentWord get _value => super._value as _$_CurrentWord;

  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$_CurrentWord(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentWord implements _CurrentWord {
  const _$_CurrentWord({required this.word});

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
            other is _$_CurrentWord &&
            const DeepCollectionEquality().equals(other.word, word));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(word));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentWordCopyWith<_$_CurrentWord> get copyWith =>
      __$$_CurrentWordCopyWithImpl<_$_CurrentWord>(this, _$identity);
}

abstract class _CurrentWord implements CurrentWord {
  const factory _CurrentWord({required final String word}) = _$_CurrentWord;

  @override
  String get word => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWordCopyWith<_$_CurrentWord> get copyWith =>
      throw _privateConstructorUsedError;
}
