import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/features/game/model/game_mode.dart';
import 'package:kobza/features/game/screen/game_screen.dart';
import 'package:kobza/features/start/start_screen.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(page: StartRoute.page, initial: true),
    AutoRoute(page: GameRoute.page),
    ];
}
