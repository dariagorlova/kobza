// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OneWord {
  List<OneLetter> get letters => throw _privateConstructorUsedError;
  bool get isHiddenWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneWordCopyWith<OneWord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneWordCopyWith<$Res> {
  factory $OneWordCopyWith(OneWord value, $Res Function(OneWord) then) =
      _$OneWordCopyWithImpl<$Res, OneWord>;
  @useResult
  $Res call({List<OneLetter> letters, bool isHiddenWord});
}

/// @nodoc
class _$OneWordCopyWithImpl<$Res, $Val extends OneWord>
    implements $OneWordCopyWith<$Res> {
  _$OneWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letters = null,
    Object? isHiddenWord = null,
  }) {
    return _then(_value.copyWith(
      letters: null == letters
          ? _value.letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<OneLetter>,
      isHiddenWord: null == isHiddenWord
          ? _value.isHiddenWord
          : isHiddenWord // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OneWordImplCopyWith<$Res> implements $OneWordCopyWith<$Res> {
  factory _$$OneWordImplCopyWith(
          _$OneWordImpl value, $Res Function(_$OneWordImpl) then) =
      __$$OneWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OneLetter> letters, bool isHiddenWord});
}

/// @nodoc
class __$$OneWordImplCopyWithImpl<$Res>
    extends _$OneWordCopyWithImpl<$Res, _$OneWordImpl>
    implements _$$OneWordImplCopyWith<$Res> {
  __$$OneWordImplCopyWithImpl(
      _$OneWordImpl _value, $Res Function(_$OneWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letters = null,
    Object? isHiddenWord = null,
  }) {
    return _then(_$OneWordImpl(
      letters: null == letters
          ? _value._letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<OneLetter>,
      isHiddenWord: null == isHiddenWord
          ? _value.isHiddenWord
          : isHiddenWord // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OneWordImpl implements _OneWord {
  const _$OneWordImpl(
      {required final List<OneLetter> letters, required this.isHiddenWord})
      : _letters = letters;

  final List<OneLetter> _letters;
  @override
  List<OneLetter> get letters {
    if (_letters is EqualUnmodifiableListView) return _letters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_letters);
  }

  @override
  final bool isHiddenWord;

  @override
  String toString() {
    return 'OneWord(letters: $letters, isHiddenWord: $isHiddenWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneWordImpl &&
            const DeepCollectionEquality().equals(other._letters, _letters) &&
            (identical(other.isHiddenWord, isHiddenWord) ||
                other.isHiddenWord == isHiddenWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_letters), isHiddenWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneWordImplCopyWith<_$OneWordImpl> get copyWith =>
      __$$OneWordImplCopyWithImpl<_$OneWordImpl>(this, _$identity);
}

abstract class _OneWord implements OneWord {
  const factory _OneWord(
      {required final List<OneLetter> letters,
      required final bool isHiddenWord}) = _$OneWordImpl;

  @override
  List<OneLetter> get letters;
  @override
  bool get isHiddenWord;
  @override
  @JsonKey(ignore: true)
  _$$OneWordImplCopyWith<_$OneWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
