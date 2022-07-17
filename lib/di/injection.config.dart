// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/service/current_word_repository.dart' as _i6;
import '../core/service/navigator.dart' as _i4;
import '../core/service/words_repository.dart' as _i5;
import '../features/game/cubit/game_cubit.dart' as _i7;
import '../features/game/model/game_mode.dart' as _i8;
import '../routes/app_router.dart' as _i3;
import 'seed_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seedModule = _$SeedModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.KobzaNavigator>(
      () => _i4.KobzaNavigator(get<_i3.AppRouter>()));
  gh.lazySingleton<_i5.WordsRepository>(() => _i5.WordsRepository());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<int>(() => seedModule.randomSeed, instanceName: 'randomSeed');
  gh.factory<_i6.CurrentWordRepository>(() => _i6.CurrentWordRepository(
      get<_i5.WordsRepository>(),
      get<int>(instanceName: 'seed'),
      get<int>(instanceName: 'randomSeed')));
  gh.factoryParam<_i7.GameCubit, _i8.GameMode, dynamic>((gameMode, _) =>
      _i7.GameCubit(get<_i4.KobzaNavigator>(), get<_i6.CurrentWordRepository>(),
          gameMode));
  return get;
}

class _$SeedModule extends _i9.SeedModule {}
