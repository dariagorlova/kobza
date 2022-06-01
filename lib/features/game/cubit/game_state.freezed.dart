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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hiddenWord) initial,
    required TResult Function(String hiddenWord, OneWord currentWord)
        matchCheck,
    required TResult Function() guessed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(MatchCheckState value) matchCheck,
    required TResult Function(GuessedGameState value) guessed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class _$$InitialGameStateCopyWith<$Res> {
  factory _$$InitialGameStateCopyWith(
          _$InitialGameState value, $Res Function(_$InitialGameState) then) =
      __$$InitialGameStateCopyWithImpl<$Res>;
  $Res call({String hiddenWord});
}

/// @nodoc
class __$$InitialGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements _$$InitialGameStateCopyWith<$Res> {
  __$$InitialGameStateCopyWithImpl(
      _$InitialGameState _value, $Res Function(_$InitialGameState) _then)
      : super(_value, (v) => _then(v as _$InitialGameState));

  @override
  _$InitialGameState get _value => super._value as _$InitialGameState;

  @override
  $Res call({
    Object? hiddenWord = freezed,
  }) {
    return _then(_$InitialGameState(
      hiddenWord: hiddenWord == freezed
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialGameState implements InitialGameState {
  const _$InitialGameState({required this.hiddenWord});

  @override
  final String hiddenWord;

  @override
  String toString() {
    return 'GameState.initial(hiddenWord: $hiddenWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialGameState &&
            const DeepCollectionEquality()
                .equals(other.hiddenWord, hiddenWord));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hiddenWord));

  @JsonKey(ignore: true)
  @override
  _$$InitialGameStateCopyWith<_$InitialGameState> get copyWith =>
      __$$InitialGameStateCopyWithImpl<_$InitialGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hiddenWord) initial,
    required TResult Function(String hiddenWord, OneWord currentWord)
        matchCheck,
    required TResult Function() guessed,
  }) {
    return initial(hiddenWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
  }) {
    return initial?.call(hiddenWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hiddenWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(MatchCheckState value) matchCheck,
    required TResult Function(GuessedGameState value) guessed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialGameState implements GameState {
  const factory InitialGameState({required final String hiddenWord}) =
      _$InitialGameState;

  String get hiddenWord => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitialGameStateCopyWith<_$InitialGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MatchCheckStateCopyWith<$Res> {
  factory _$$MatchCheckStateCopyWith(
          _$MatchCheckState value, $Res Function(_$MatchCheckState) then) =
      __$$MatchCheckStateCopyWithImpl<$Res>;
  $Res call({String hiddenWord, OneWord currentWord});

  $OneWordCopyWith<$Res> get currentWord;
}

/// @nodoc
class __$$MatchCheckStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements _$$MatchCheckStateCopyWith<$Res> {
  __$$MatchCheckStateCopyWithImpl(
      _$MatchCheckState _value, $Res Function(_$MatchCheckState) _then)
      : super(_value, (v) => _then(v as _$MatchCheckState));

  @override
  _$MatchCheckState get _value => super._value as _$MatchCheckState;

  @override
  $Res call({
    Object? hiddenWord = freezed,
    Object? currentWord = freezed,
  }) {
    return _then(_$MatchCheckState(
      hiddenWord: hiddenWord == freezed
          ? _value.hiddenWord
          : hiddenWord // ignore: cast_nullable_to_non_nullable
              as String,
      currentWord: currentWord == freezed
          ? _value.currentWord
          : currentWord // ignore: cast_nullable_to_non_nullable
              as OneWord,
    ));
  }

  @override
  $OneWordCopyWith<$Res> get currentWord {
    return $OneWordCopyWith<$Res>(_value.currentWord, (value) {
      return _then(_value.copyWith(currentWord: value));
    });
  }
}

/// @nodoc

class _$MatchCheckState implements MatchCheckState {
  const _$MatchCheckState(
      {required this.hiddenWord, required this.currentWord});

  @override
  final String hiddenWord;
  @override
  final OneWord currentWord;

  @override
  String toString() {
    return 'GameState.matchCheck(hiddenWord: $hiddenWord, currentWord: $currentWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchCheckState &&
            const DeepCollectionEquality()
                .equals(other.hiddenWord, hiddenWord) &&
            const DeepCollectionEquality()
                .equals(other.currentWord, currentWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hiddenWord),
      const DeepCollectionEquality().hash(currentWord));

  @JsonKey(ignore: true)
  @override
  _$$MatchCheckStateCopyWith<_$MatchCheckState> get copyWith =>
      __$$MatchCheckStateCopyWithImpl<_$MatchCheckState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hiddenWord) initial,
    required TResult Function(String hiddenWord, OneWord currentWord)
        matchCheck,
    required TResult Function() guessed,
  }) {
    return matchCheck(hiddenWord, currentWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
  }) {
    return matchCheck?.call(hiddenWord, currentWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
    required TResult orElse(),
  }) {
    if (matchCheck != null) {
      return matchCheck(hiddenWord, currentWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(MatchCheckState value) matchCheck,
    required TResult Function(GuessedGameState value) guessed,
  }) {
    return matchCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
  }) {
    return matchCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
    required TResult orElse(),
  }) {
    if (matchCheck != null) {
      return matchCheck(this);
    }
    return orElse();
  }
}

abstract class MatchCheckState implements GameState {
  const factory MatchCheckState(
      {required final String hiddenWord,
      required final OneWord currentWord}) = _$MatchCheckState;

  String get hiddenWord => throw _privateConstructorUsedError;
  OneWord get currentWord => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MatchCheckStateCopyWith<_$MatchCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuessedGameStateCopyWith<$Res> {
  factory _$$GuessedGameStateCopyWith(
          _$GuessedGameState value, $Res Function(_$GuessedGameState) then) =
      __$$GuessedGameStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuessedGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements _$$GuessedGameStateCopyWith<$Res> {
  __$$GuessedGameStateCopyWithImpl(
      _$GuessedGameState _value, $Res Function(_$GuessedGameState) _then)
      : super(_value, (v) => _then(v as _$GuessedGameState));

  @override
  _$GuessedGameState get _value => super._value as _$GuessedGameState;
}

/// @nodoc

class _$GuessedGameState implements GuessedGameState {
  const _$GuessedGameState();

  @override
  String toString() {
    return 'GameState.guessed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GuessedGameState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hiddenWord) initial,
    required TResult Function(String hiddenWord, OneWord currentWord)
        matchCheck,
    required TResult Function() guessed,
  }) {
    return guessed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
  }) {
    return guessed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hiddenWord)? initial,
    TResult Function(String hiddenWord, OneWord currentWord)? matchCheck,
    TResult Function()? guessed,
    required TResult orElse(),
  }) {
    if (guessed != null) {
      return guessed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialGameState value) initial,
    required TResult Function(MatchCheckState value) matchCheck,
    required TResult Function(GuessedGameState value) guessed,
  }) {
    return guessed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
  }) {
    return guessed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialGameState value)? initial,
    TResult Function(MatchCheckState value)? matchCheck,
    TResult Function(GuessedGameState value)? guessed,
    required TResult orElse(),
  }) {
    if (guessed != null) {
      return guessed(this);
    }
    return orElse();
  }
}

abstract class GuessedGameState implements GameState {
  const factory GuessedGameState() = _$GuessedGameState;
}
