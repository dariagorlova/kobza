import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kobza/core/model/one_word.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial({
    required String hiddenWord,
  }) = InitialGameState;
  const factory GameState.matchCheck({
    required String hiddenWord,
    required OneWord currentWord,
  }) = MatchCheckState;
  const factory GameState.guessed() = GuessedGameState;
}
