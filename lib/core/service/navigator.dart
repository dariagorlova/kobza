import 'package:injectable/injectable.dart';
import 'package:kobza/features/game/model/game_mode.dart';
import 'package:kobza/routes/app_router.dart';

@injectable
class KobzaNavigator {
  const KobzaNavigator(this._router);

  final AppRouter _router;

  Future<void> openGame(GameMode gameMode) => _router.push(
        GameRoute(
          gameMode: gameMode,
        ),
      );

  Future<bool> pop() => _router.pop();
}
