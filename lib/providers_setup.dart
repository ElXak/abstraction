import 'package:provider/provider.dart';

import 'services/api/fake_api.dart';
import 'services/api/http_api.dart';

const bool USE_FAKE_IMPLEMENTATION = true;

List<Provider> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<Provider> independentServices = [
  Provider.value(value: USE_FAKE_IMPLEMENTATION ? FakeApi() : HttpApi()),
];

List<Provider> dependentServices = [];

List<Provider> uiConsumableProviders = [];
