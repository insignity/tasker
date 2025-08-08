import 'package:get_it/get_it.dart';
import 'package:tasker/blocs/sign_up/sign_up_bloc.dart';
import 'package:tasker/services/api_service.dart';

final sl = GetIt.instance;

void initializeInstances() {
  sl.registerSingleton<ApiService>(ApiService());

  sl.registerFactory<SignUpBloc>(() => SignUpBloc(sl()));
}
