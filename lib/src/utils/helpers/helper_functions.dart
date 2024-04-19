import 'package:flutter/material.dart';

class AppHelperFunctions {
  AppHelperFunctions._();

  static bool isDarkMode(BuildContext context){
  return Theme.of(context).brightness==Brightness.dark;
  }


}


