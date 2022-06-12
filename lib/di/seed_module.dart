import 'dart:math';

import 'package:injectable/injectable.dart';

const _randomMaxInt = 4294967296;

@module
abstract class SeedModule {
  @Named('seed')
  int get seed {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day).millisecondsSinceEpoch;
  }

  @Named('randomSeed')
  int get randomSeed => Random().nextInt(_randomMaxInt);
}
