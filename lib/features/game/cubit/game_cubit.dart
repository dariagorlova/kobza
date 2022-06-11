import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/core/service/current_word_repository.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/routes/app_router.dart';

@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit(
    this._router,
    this._currentWordRepository,
  ) : super(
          GameState(
            hiddenWord: _currentWordRepository.getCurrentWord(),
            answers: List.generate(
              6,
              (a) => List.generate(
                5,
                (l) => const OneLetter(),
              ),
            ),
            keyboard: [
              ['Й', 'Ц', 'У', 'К', 'Е', 'Н', 'Г', 'Ґ', 'Ш', 'Щ', 'З', 'Х'],
              ['Ф', 'І', 'Ї', 'В', 'А', 'П', 'Р', 'О', 'Л', 'Д', 'Ж', 'Є'],
              ['<', 'Я', 'Ч', 'С', 'М', 'И', 'Т', 'Ь', 'Б', 'Ю', '>'],
            ],
          ),
        );

  final AppRouter _router;
  final CurrentWordRepository _currentWordRepository;

  void letterPressed(String letter) {
    if ((state.attempt >= state.answers.length) || (state.guessed)) {
      return;
    }

    switch (letter) {
      case '>':
        addAndAnalyzeNewAttempt();
        return;
      case '<':
        deleteLastLetter();
        return;
      default:
        addLetter(letter);
    }
  }

  void addLetter(String letter) {
    if (state.currentWordIsFull) {
      return;
    }
    final word = state.currentWord;
    final position = word.indexWhere((letter) => letter.letter.isEmpty);
    word[position] = OneLetter(letter: letter);

    final answers = [...state.answers];
    answers[state.attempt] = word;
    emit(state.copyWith(answers: answers));
  }

  void deleteLastLetter() {
    if (!state.canDelete) {
      return;
    }
    final word = state.currentWord;
    final toDeleteIndex = word.lastIndexWhere(
      (letter) => letter.letter.isNotEmpty,
    );
    word[toDeleteIndex] = const OneLetter();
    final answers = [...state.answers];
    answers[state.attempt] = word;

    emit(state.copyWith(answers: answers));
  }

  void addAndAnalyzeNewAttempt() {
    if (!state.currentWordIsFull) {
      return;
    }

    if (!isCorrectWord()) {
      emit(state.copyWith(wrongWordDialog: true));
      emit(state.copyWith(wrongWordDialog: false));
      return;
    }

    emit(state.copyWith(attempt: state.attempt + 1));
    markAnsweredLetters();

    if (state.guessed) {
      emit(state.copyWith(playerWon: true));
    } else if (state.attempt >= state.answers.length) {
      emit(state.copyWith(playerLost: true));
      emit(state.copyWith(attempt: state.attempt - 1));
      restartGame();
    }
  }

  bool isCorrectWord() {
    final wordAsStr = state.currentWord.map((l) => l.letter).join();

    if (!_currentWordRepository.isWordInRepository(wordAsStr)) {
      return false;
    }
    return true;
  }

  void markAnsweredLetters() {
    final answers = state.answers
        .map(
          (word) => word
              .asMap()
              .map(
                (index, letter) => MapEntry(
                  index,
                  letter.copyWith(
                    letterState: _getLetterState(index, letter.letter),
                  ),
                ),
              )
              .values
              .toList(),
        )
        .toList();
    emit(state.copyWith(answers: answers));
  }

  LetterState _getLetterState(int index, String letter) {
    if (letter.isEmpty) {
      return LetterState.initial;
    }
    if (state.hiddenWord[index] == letter) {
      return LetterState.correctly;
    }
    if (state.hiddenWord.contains(letter)) {
      return LetterState.almostCorrectly;
    }
    return LetterState.wrong;
  }

  bool getEnable(String letter) {
    if (letter == '<' || letter == '>') {
      if (!state.currentWordIsFull && letter == '>') {
        return false;
      } else {
        if (!state.canDelete && letter == '<') {
          return false;
        }
        return true;
      }
    } else if (state.guessed) {
      return false;
    }

    return true;
  }

  void endGame() {
    _router.pop();
  }

  void restartGame() {
    final answers = state.answers
        .map(
          (word) => word
              .asMap()
              .map(
                (index, letter) => MapEntry(
                  index,
                  letter.copyWith(
                    letter: '',
                    letterState: LetterState.initial,
                  ),
                ),
              )
              .values
              .toList(),
        )
        .toList();
    emit(state.copyWith(answers: answers));

    emit(state.copyWith(attempt: 0));
    emit(state.copyWith(playerWon: false));
    emit(state.copyWith(playerLost: false));
    emit(state.copyWith(wrongWordDialog: false));
  }
}
