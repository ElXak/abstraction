import 'package:get_it/get_it.dart';

import 'services/api/api.dart';
import 'services/api/fake_api.dart';
import 'services/api/http_api.dart';

GetIt getIt = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setup() {
  getIt.registerLazySingleton<Api>(
      () => USE_FAKE_IMPLEMENTATION ? FakeApi() : HttpApi());
}
