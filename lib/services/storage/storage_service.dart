import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

///Service to store something lightweight like session token
class StorageService {
  final SharedPreferences preferences;

  StorageService(this.preferences);

  static const String _token = "token";

  ///Session token
  String? getToken() {
    log("getToken");
    return preferences.getString(_token);
  }

  setToken(String token) async {
    log("setToken");
    return await preferences.setString(_token, token);
  }
}
