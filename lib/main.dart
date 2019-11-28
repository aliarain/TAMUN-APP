import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamun/config/config_page.dart';
import 'package:tamun/utils/tamun_config.dart';

Future<void> main() async{

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);


  Tamun.prefs = await SharedPreferences.getInstance();

   runApp(ConfigPage());
  }


