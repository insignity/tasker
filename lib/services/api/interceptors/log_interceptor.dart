import 'package:dio/dio.dart';
import 'package:tasker/utilities.dart';

class LogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    l.d('********************** Request **********************');
    l.i('uri: ${options.uri.toString()}');
    l.i('method: ${options.method}');
    l.i('  responseType: ${options.responseType.toString()}');
    l.i('  followRedirects: ${options.followRedirects}');
    l.i('  persistentConnection: ${options.persistentConnection}');
    l.i('  connectTimeout: ${options.connectTimeout}');
    l.i('  sendTimeout: ${options.sendTimeout}');
    l.i('  receiveTimeout: ${options.receiveTimeout}');
    l.i('  receiveDataWhenStatusError: ${options.receiveDataWhenStatusError}');
    l.i('  extra: ${options.extra}');
    l.i('headers:');
    options.headers.forEach((key, v) => l.i('  $key: $v'));
    l.i('data:');
    l.d('********************** End Request **********************');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    l.d('********************** Response **********************');
    l.i('uri: ${response.requestOptions.uri}');
    l.i('statusCode: ${response.statusCode}');
    l.i('  redirect: ${response.realUri}');
    l.i('headers:');
    response.headers.forEach((key, v) => l.i('  $key: $v'));
    l.i('Response Text:');
    l.i(response.toString());
    l.d('********************** End Response **********************');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print("error je ejje");
    l.e(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    super.onError(err, handler);
  }
}
