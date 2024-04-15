import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xFF4B68FF);

  ///creating gradient colors

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFF4B685F),
      Color(0xFF4B686F),
      Color(0xFF4B68FF),
    ],
  );
}
