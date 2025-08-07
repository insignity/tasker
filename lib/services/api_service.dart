import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future login() async {
    Uri uri = Uri(
      scheme: 'https',
      host: 'user-service-dq04.onrender.com',
      path: 'users/login',
    );

    http.Response response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"username": "aero", "password": "123"}),
    );
  }
}

/// final httpsUri = Uri(
///     scheme: 'https',
///     host: 'dart.dev',
///     path: 'guides/libraries/library-tour',
///     fragment: 'numbers');
/// print(httpsUri); // https://dart.dev/guides/libraries/library-tour#numbers
