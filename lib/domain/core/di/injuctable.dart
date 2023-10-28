import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injuctable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configInjuction() async {
  getIt.init(environment: Environment.prod);
}
