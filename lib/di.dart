import 'dart:math';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasker/blocs/sign_up/sign_up_bloc.dart';
import 'package:tasker/services/api/api_module.dart';
import 'package:tasker/services/api/api_service.dart';
import 'package:tasker/services/api/interceptors/log_interceptor.dart';
import 'package:tasker/services/api/interceptors/token_interceptor.dart';
import 'package:tasker/services/storage/storage_service.dart';
import 'package:logger/logger.dart';
import 'blocs/log_in/log_in_bloc.dart';
import 'utilities.dart';

final sl = GetIt.instance;

Future initializeInstances() async {
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<Logger>(()=>l);
  ///Services
  sl.registerLazySingleton<SharedPreferences>(() => prefs);

  sl.registerLazySingleton<Api>(() => ApiModule.getClient());
  sl.registerLazySingleton<StorageService>(() => StorageService(sl()));

  ///Blocs
  sl.registerFactory<SignUpBloc>(() => SignUpBloc(sl()));
  sl.registerFactory<LogInBloc>(() => LogInBloc(sl()));

  ///Interceptor
  sl.registerLazySingleton<LogInterceptor>(() => LogInterceptor());
  sl.registerLazySingleton<TokenInterceptor>(() => TokenInterceptor(sl()));
}
