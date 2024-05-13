import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceData{
  static Future<void> setToken(String token)async {
    final sharedPreferences=await SharedPreferences.getInstance();
    await sharedPreferences.setString(PreferenceKeys.loginToken, token);
  }
  static Future<String> getToken()async {
    final sharedPreferences=await SharedPreferences.getInstance();
    return sharedPreferences.getString(PreferenceKeys.loginToken)??"";
  }
  static Future<void> clearAllData()async {
    final sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }
}

class PreferenceKeys{
  static const loginToken="LOGIN_TOKEN";
}