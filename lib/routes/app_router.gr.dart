// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    StartRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: const StartScreen());
    },
    GameRoute.name: (routeData) {
      return MaterialPageX<bool>(
          routeData: routeData, child: const GameScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(StartRoute.name, path: '/'),
        RouteConfig(GameRoute.name, path: '/game-screen')
      ];
}

/// generated route for
/// [StartScreen]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute() : super(StartRoute.name, path: '/');

  static const String name = 'StartRoute';
}

/// generated route for
/// [GameScreen]
class GameRoute extends PageRouteInfo<void> {
  const GameRoute() : super(GameRoute.name, path: '/game-screen');

  static const String name = 'GameRoute';
}