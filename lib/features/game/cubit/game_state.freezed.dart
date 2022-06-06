// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  String get hiddenWord => throw _privateConstructorUsedError;
  List<List<OneLetter>> get answers => throw _privateConstructorUsedError;
  List<List<String>> get keyboard => throw _privateConstructorUsedError;
  int get attempt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call(
      {String hiddenWord,
      List<List<OneLetter>> answers,
      List<List<String>> keyboard,
      int attempt});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? hiddenWord = freezed,
    Object? answers = freezed,
    Object? keyboard = freezed,
    Object? attempt = freezed,
  }) {
    return _then(_value.copyWith(
      hiddenWord: hiddenWord == freezed
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<OneLetter>>,
      keyboard: keyboard == freezed
          ? _value.keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      attempt: attempt == freezed
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(
          _$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hiddenWord,
      List<List<OneLetter>> answers,
      List<List<String>> keyboard,
      int attempt});
}

/// @nodoc
class __$$_GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(
      _$_GameState _value, $Res Function(_$_GameState) _then)
      : super(_value, (v) => _then(v as _$_GameState));

  @override
  _$_GameState get _value => super._value as _$_GameState;

  @override
  $Res call({
    Object? hiddenWord = freezed,
    Object? answers = freezed,
    Object? keyboard = freezed,
    Object? attempt = freezed,
  }) {
    return _then(_$_GameState(
      hiddenWord: hiddenWord == freezed
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<OneLetter>>,
      keyboard: keyboard == freezed
          ? _value._keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      attempt: attempt == freezed
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameState implements _GameState {
  const _$_GameState(
      {required this.hiddenWord,
      required final List<List<OneLetter>> answers,
      required final List<List<String>> keyboard,
      this.attempt = 0})
      : _answers = answers,
        _keyboard = keyboard;

  @override
  final String hiddenWord;
  final List<List<OneLetter>> _answers;
  @override
  List<List<OneLetter>> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<List<String>> _keyboard;
  @override
  List<List<String>> get keyboard {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyboard);
  }

  @override
  @JsonKey()
  final int attempt;

  @override
  String toString() {
    return 'GameState(hiddenWord: $hiddenWord, answers: $answers, keyboard: $keyboard, attempt: $attempt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
            const DeepCollectionEquality()
                .equals(other.hiddenWord, hiddenWord) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality().equals(other._keyboard, _keyboard) &&
            const DeepCollectionEquality().equals(other.attempt, attempt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hiddenWord),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_keyboard),
      const DeepCollectionEquality().hash(attempt));

  @JsonKey(ignore: true)
  @override
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final String hiddenWord,
      required final List<List<OneLetter>> answers,
      required final List<List<String>> keyboard,
      final int attempt}) = _$_GameState;

  @override
  String get hiddenWord => throw _privateConstructorUsedError;
  @override
  List<List<OneLetter>> get answers => throw _privateConstructorUsedError;
  @override
  List<List<String>> get keyboard => throw _privateConstructorUsedError;
  @override
  int get attempt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
