import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  //static SharedPreferences _preferences;
  static SharedPreferences prefs = SharedPreferences as SharedPreferences;
  static const _CurrentCulture = 'username';
  //static const _keyPets = 'pets';
  //static const _keyBirthday = 'birthday';

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString(_CurrentCulture, "ca-en");
  }

  static Future setCurrentCulture(String username) async =>
      await prefs.setString(_CurrentCulture, username);

  static String? getCurrentCulture() => prefs.getString(_CurrentCulture);
}
