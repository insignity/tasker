import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Api {
  final Dio dio;

  Api(this.dio);

  Future<String> login(String username, String password) async {
    Map<String, dynamic> json = {};
    try {
      Response response = await dio.post(
        "/users/login",
        // options: Options(headers: {"Content-Type": "application/json"}),
        data: jsonEncode({"username": username, "password": password}),
      );

      json  = jsonDecode(response.data) as Map<String, dynamic>;
    }catch(e){
      print(e);
    }
    return json['token'];
  }
}

class ApiService2 {
  Future<String> login(String username, String password) async {
    Uri uri = Uri(
      scheme: 'https',
      host: 'user-service-dq04.onrender.com',
      path: 'users/login',
    );

    String result = '';

    try {
      http.Response response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"username": username, "password": password}),
      );

      print(response.statusCode);
      print(response.body);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      result = json['token'] as String;
    } catch (e) {
      print(e);
    }
    return result;
  }
}

/// final httpsUri = Uri(
///     scheme: 'https',
///     host: 'dart.dev',
///     path: 'guides/libraries/library-tour',
///     fragment: 'numbers');
/// print(httpsUri); // https://dart.dev/guides/libraries/library-tour#numbers
