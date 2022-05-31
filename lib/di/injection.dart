import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kobza/di/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
GetIt configureInjection() {
  return $initGetIt(getIt);
}
