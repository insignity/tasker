import 'package:get_it/get_it.dart';
import 'package:tasker/services/api_service.dart';

final sl = GetIt.instance;

void initializeInstances() {
  sl.registerSingleton<ApiService>(ApiService());
}
