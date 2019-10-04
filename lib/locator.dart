import 'package:whiteboard/services/navigation.dart';
import 'package:whiteboard/services/network.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => NetworkService());
}
