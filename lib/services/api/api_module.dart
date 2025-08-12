import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:tasker/services/api/interceptors/token_interceptor.dart';

import '../../di.dart';
import 'api_service.dart';
import 'interceptors/log_interceptor.dart';

abstract class ApiModule {

  static Api getClient() {
    final api = Api(
    Dio(BaseOptions(baseUrl: "https://user-service-dq04.onrender.com") )
  );
    // Add interceptors here
    api.dio.interceptors.addAll([sl<LogInterceptor>(), sl<TokenInterceptor>()]);

    return api;
  }
}
