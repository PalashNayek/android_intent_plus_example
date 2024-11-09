import 'package:get_it/get_it.dart';

import '../services/IntentService.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<IntentService>(() => IntentService());
}
