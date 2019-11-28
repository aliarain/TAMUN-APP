import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Tamun{
  static const String app_name = 'TAMUN';
  static const String app_version = '1.0.1';
  static const int  app_version_code = 1;
  static const String app_color = '#ffd716';
  static Color primaryAppColor = Colors.white;
  static Color secondaryAppColor = Colors.black;
  static const String  google_sans_family = "GoogleSans";
  static bool isDebugMode = true;
  static SharedPreferences prefs;
  static const String darkModePref = "darkModePref";


}