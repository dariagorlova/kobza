import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kobza/core/model/one_letter.dart';

part 'game_state.freezed.dart';

typedef Keyboard = List<List<OneLetter>>;

final defaultAnswers = List.generate(
  6,
  (a) => List.generate(
    5,
    (l) => const OneLetter(),
  ),
);

@freezed
class GameState with _$GameState {
  const factory GameState({
    required String hiddenWord,
    required List<List<OneLetter>> answers,
    required List<List<String>> keyboard,
    @Default(0) int attempt,
  }) = _GameState;
}

extension XGameState on GameState {
  List<OneLetter> get currentWord => [...answers[attempt]];

  bool get canDelete => answers[attempt].any((l) => l.letter.isNotEmpty);

  bool get currentWordIsFull =>
      answers[attempt].every((l) => l.letter.isNotEmpty);

  bool get guessed => answers.any(
        (line) => line.every((l) => l.letterState == LetterState.correctly),
      );
}
