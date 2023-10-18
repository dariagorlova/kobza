// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  bool get playerWon => throw _privateConstructorUsedError;
  bool get playerLost => throw _privateConstructorUsedError;
  bool get wrongWordDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {String hiddenWord,
      List<List<OneLetter>> answers,
      List<List<String>> keyboard,
      int attempt,
      bool playerWon,
      bool playerLost,
      bool wrongWordDialog});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hiddenWord = null,
    Object? answers = null,
    Object? keyboard = null,
    Object? attempt = null,
    Object? playerWon = null,
    Object? playerLost = null,
    Object? wrongWordDialog = null,
  }) {
    return _then(_value.copyWith(
      hiddenWord: null == hiddenWord
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<OneLetter>>,
      keyboard: null == keyboard
          ? _value.keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      attempt: null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
      playerWon: null == playerWon
          ? _value.playerWon
          : playerWon // ignore: cast_nullable_to_non_nullable
              as bool,
      playerLost: null == playerLost
          ? _value.playerLost
          : playerLost // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongWordDialog: null == wrongWordDialog
          ? _value.wrongWordDialog
          : wrongWordDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hiddenWord,
      List<List<OneLetter>> answers,
      List<List<String>> keyboard,
      int attempt,
      bool playerWon,
      bool playerLost,
      bool wrongWordDialog});
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hiddenWord = null,
    Object? answers = null,
    Object? keyboard = null,
    Object? attempt = null,
    Object? playerWon = null,
    Object? playerLost = null,
    Object? wrongWordDialog = null,
  }) {
    return _then(_$GameStateImpl(
      hiddenWord: null == hiddenWord
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<List<OneLetter>>,
      keyboard: null == keyboard
          ? _value._keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      attempt: null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
      playerWon: null == playerWon
          ? _value.playerWon
          : playerWon // ignore: cast_nullable_to_non_nullable
              as bool,
      playerLost: null == playerLost
          ? _value.playerLost
          : playerLost // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongWordDialog: null == wrongWordDialog
          ? _value.wrongWordDialog
          : wrongWordDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {required this.hiddenWord,
      required final List<List<OneLetter>> answers,
      required final List<List<String>> keyboard,
      this.attempt = 0,
      this.playerWon = false,
      this.playerLost = false,
      this.wrongWordDialog = false})
      : _answers = answers,
        _keyboard = keyboard;

  @override
  final String hiddenWord;
  final List<List<OneLetter>> _answers;
  @override
  List<List<OneLetter>> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<List<String>> _keyboard;
  @override
  List<List<String>> get keyboard {
    if (_keyboard is EqualUnmodifiableListView) return _keyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyboard);
  }

  @override
  @JsonKey()
  final int attempt;
  @override
  @JsonKey()
  final bool playerWon;
  @override
  @JsonKey()
  final bool playerLost;
  @override
  @JsonKey()
  final bool wrongWordDialog;

  @override
  String toString() {
    return 'GameState(hiddenWord: $hiddenWord, answers: $answers, keyboard: $keyboard, attempt: $attempt, playerWon: $playerWon, playerLost: $playerLost, wrongWordDialog: $wrongWordDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.hiddenWord, hiddenWord) ||
                other.hiddenWord == hiddenWord) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality().equals(other._keyboard, _keyboard) &&
            (identical(other.attempt, attempt) || other.attempt == attempt) &&
            (identical(other.playerWon, playerWon) ||
                other.playerWon == playerWon) &&
            (identical(other.playerLost, playerLost) ||
                other.playerLost == playerLost) &&
            (identical(other.wrongWordDialog, wrongWordDialog) ||
                other.wrongWordDialog == wrongWordDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hiddenWord,
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_keyboard),
      attempt,
      playerWon,
      playerLost,
      wrongWordDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final String hiddenWord,
      required final List<List<OneLetter>> answers,
      required final List<List<String>> keyboard,
      final int attempt,
      final bool playerWon,
      final bool playerLost,
      final bool wrongWordDialog}) = _$GameStateImpl;

  @override
  String get hiddenWord;
  @override
  List<List<OneLetter>> get answers;
  @override
  List<List<String>> get keyboard;
  @override
  int get attempt;
  @override
  bool get playerWon;
  @override
  bool get playerLost;
  @override
  bool get wrongWordDialog;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
