// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kobza/core/service/current_word_repository.dart' as _i6;
import 'package:kobza/core/service/navigator.dart' as _i4;
import 'package:kobza/core/service/words_repository.dart' as _i5;
import 'package:kobza/di/seed_module.dart' as _i9;
import 'package:kobza/features/game/cubit/game_cubit.dart' as _i7;
import 'package:kobza/features/game/model/game_mode.dart' as _i8;
import 'package:kobza/routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final seedModule = _$SeedModule();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.KobzaNavigator>(
        () => _i4.KobzaNavigator(gh<_i3.AppRouter>()));
    gh.lazySingleton<_i5.WordsRepository>(() => _i5.WordsRepository());
    gh.factory<int>(
      () => seedModule.seed,
      instanceName: 'seed',
    );
    gh.factory<int>(
      () => seedModule.randomSeed,
      instanceName: 'randomSeed',
    );
    gh.factory<_i6.CurrentWordRepository>(() => _i6.CurrentWordRepository(
          gh<_i5.WordsRepository>(),
          gh<int>(instanceName: 'seed'),
          gh<int>(instanceName: 'randomSeed'),
        ));
    gh.factoryParam<_i7.GameCubit, _i8.GameMode, dynamic>((
      gameMode,
      _,
    ) =>
        _i7.GameCubit(
          gh<_i4.KobzaNavigator>(),
          gh<_i6.CurrentWordRepository>(),
          gameMode,
        ));
    return this;
  }
}

class _$SeedModule extends _i9.SeedModule {}
