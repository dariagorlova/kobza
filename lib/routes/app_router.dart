import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/features/game/screen/game_screen.dart';
import 'package:kobza/features/start/start_screen.dart';

part 'app_router.gr.dart';

@lazySingleton
@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: StartScreen, initial: true),
    AutoRoute<bool>(page: GameScreen),
  ],
)
class AppRouter extends _$AppRouter {}
