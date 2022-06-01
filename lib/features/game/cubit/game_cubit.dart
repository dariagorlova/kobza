import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/features/game/cubit/game_state.dart';
import 'package:kobza/routes/app_router.dart';

@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit(
    this._router,
  ) : super(
          const GameState.initial(hiddenWord: 'КОБЗА'),
        );

  final AppRouter _router;

  void startGame() {
    //
  }

  void endGame() {
    _router.pop();
  }
}
