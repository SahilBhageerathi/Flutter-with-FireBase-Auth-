import 'package:flutter/material.dart';

class CustomOutlineBtnTheme{
  CustomOutlineBtnTheme._();

  static OutlinedButtonThemeData lightOutLineButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static OutlinedButtonThemeData darkOutLineButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}