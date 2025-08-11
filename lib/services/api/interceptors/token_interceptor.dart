import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tasker/services/storage/storage_service.dart';

class TokenInterceptor extends Interceptor{
  final StorageService storage;

  TokenInterceptor(this.storage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = storage.getToken();
    if(token != null){
      options.headers.addAll({"Bearer token": token});
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if(response.data != null){
      if(response.data['token'] != null){
        storage.setToken(response.data['token']);
      }
    }
    super.onResponse(response, handler);
  }
}