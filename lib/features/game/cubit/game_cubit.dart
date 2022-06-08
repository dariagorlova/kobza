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
    //CurrentWordRepository _currentWordRepository,
    this._currentWordRepository,
  ) : super(
          GameState(
            hiddenWord: _currentWordRepository.getCurrentWord(),
            answers: defaultAnswers,
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
    if (state.attempt >= state.answers.length) {
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

  void addAndAnalyzeNewAttempt() {
    if (!state.currentWordIsFull) {
      return;
    }

    // final wordAsStr = StringBuffer();
    // state.currentWord.map(
    //   (e) => wordAsStr.write(e.letter),
    // );
    final wordAsStr = StringBuffer();
    for (var i = 0; i < state.currentWord.length; i++) {
      wordAsStr.write(state.currentWord[i].letter);
    }

    if (!_currentWordRepository.isWordInRepository(wordAsStr.toString())) {
      return;
    }

    emit(state.copyWith(attempt: state.attempt + 1));
    markAnsweredLetters();
  }

  void endGame() {
    _router.pop();
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
    }
    return true;
  }
}
