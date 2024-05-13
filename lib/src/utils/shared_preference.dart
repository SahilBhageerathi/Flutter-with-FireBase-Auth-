import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceData{
  static Future<void> setToken(String token)async {
    final sharedPreferences=await SharedPreferences.getInstance();
    await sharedPreferences.setString(PreferenceKeys.loginToken, token);
  }
}

class PreferenceKeys{
  static const loginToken="LOGIN_TOKEN";
}