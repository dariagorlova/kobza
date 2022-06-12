import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kobza/di/injection.dart' as di;
import 'package:kobza/main.dart';

import '../util/mock_words_repository.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await di.getIt.reset();
  await tester.pumpWidget(
    const MyApp(
      locale: Locale('en'),
    ),
  );
  await tester.pumpAndSettle();

  di.getIt
    ..allowReassignment = true
    ..registerFactory<int>(() => 0, instanceName: 'seed')
    ..registerFactory<int>(() => 1, instanceName: 'randomSeed')
    ..registerSingleton(getWordsRepository())
    ..allowReassignment = false;
}
