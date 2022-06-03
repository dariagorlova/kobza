import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/core/model/one_letter.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/routes/app_router.dart';

@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit(
    this._router,
  ) : super(
          GameState(
            hiddenWord: 'КОБЗА',
            answers: defaultAnswers,
            keyboard: createKeyboard(
              [
                ['Й', 'Ц', 'У', 'К', 'Е', 'Н', 'Г', 'Ґ', 'Ш', 'Щ', 'З', 'Х'],
                ['Ф', 'І', 'Ї', 'В', 'А', 'П', 'Р', 'О', 'Л', 'Д', 'Ж', 'Є'],
                ['<', 'Я', 'Ч', 'С', 'М', 'И', 'Т', 'Ь', 'Б', 'Ю', '>'],
              ],
            ),
          ),
        );

  final AppRouter _router;

  void letterPressed(String letter) {
    var letterReplaced = false;
    // var currentState = LetterState.initial;

    final newAnswers = state.answers
        .map(
          (line) => line.map(
            (l) {
              if (l.letter.isEmpty && !letterReplaced) {
                letterReplaced = true;
                // currentState = validateLetter(letter);
                return l.copyWith(
                  letter: letter,
                  // letterState: currentState,
                );
              }
              return l;
            },
          ).toList(),
        )
        .toList();

    // final newKeyboard = state.keyboard
    //     .map(
    //       (line) => line
    //           .map(
    //             (l) => l.letter == letter
    //                 ? l.copyWith(letterState: currentState)
    //                 : l,
    //           )
    //           .toList(),
    //     )
    //     .toList();

    emit(
      state.copyWith(
        answers: newAnswers,
        // keyboard: newKeyboard,
      ),
    );
  }

  LetterState validateLetter(String letter) {
    return LetterState.correctly;
  }

  void startGame() {
    //
  }

  void addAndAnalyzeNewAttempt(String newWord) {
    newWord.split('').map(
          (i) => OneLetter(letter: i, letterState: LetterState.initial),
        );
  }

  void endGame() {
    _router.pop();
  }
}
