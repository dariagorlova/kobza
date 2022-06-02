import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
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

  void startGame() {
    //
  }

  void endGame() {
    _router.pop();
  }
}
