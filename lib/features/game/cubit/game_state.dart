import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kobza/core/model/one_letter.dart';

part 'game_state.freezed.dart';

typedef Keyboard = List<List<OneLetter>>;

final defaultAnswers = List.generate(
  6,
  (a) => List.generate(
    5,
    (l) => const OneLetter(letter: '', letterState: LetterState.initial),
  ),
);

Keyboard createKeyboard(List<List<String>> alphabet) {
  return alphabet
      .map(
        (line) => line
            .map(
              (l) => OneLetter(letter: l, letterState: LetterState.initial),
            )
            .toList(),
      )
      .toList();
}

@freezed
class GameState with _$GameState {
  const factory GameState({
    required String hiddenWord,
    required List<List<OneLetter>> answers,
    required Keyboard keyboard,
  }) = _GameState;
}

extension XGameState on GameState {
  bool get guessed => answers.any(
        (line) => line.every((l) => l.letterState == LetterState.correctly),
      );
}
