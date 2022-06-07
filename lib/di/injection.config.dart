// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/service/current_word_repository.dart' as _i5;
import '../core/service/words_repository.dart' as _i4;
import '../features/game/cubit/game_cubit.dart' as _i6;
import '../routes/app_router.dart' as _i3;
import 'seed_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seedModule = _$SeedModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.WordsRepository>(() => _i4.WordsRepository());
  gh.factory<int>(() => seedModule.seed, instanceName: 'seed');
  gh.factory<_i5.CurrentWordRepository>(() => _i5.CurrentWordRepository(
      get<_i4.WordsRepository>(), get<int>(instanceName: 'seed')));
  gh.factory<_i6.GameCubit>(() =>
      _i6.GameCubit(get<_i3.AppRouter>(), get<_i5.CurrentWordRepository>()));
  return get;
}

class _$SeedModule extends _i7.SeedModule {}
