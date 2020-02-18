import 'package:shared_preferences/shared_preferences.dart';

class ConfigHelper {
  
  static Future<bool> fnGetAppRegistrationState() async {
    SharedPreferences oSharedPref = await SharedPreferences.getInstance();
    bool bIsAppRegistered =  oSharedPref.getBool('bIsAppRegistered') ?? false;

    return bIsAppRegistered;
  }
}