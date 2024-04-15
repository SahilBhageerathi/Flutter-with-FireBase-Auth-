import 'package:flutter/material.dart';
import 'package:sample_1/src/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/check_box_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/chip_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/elevated_btn_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/outline_btn_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:sample_1/src/utils/theme/custom_themes/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedBtnTheme.lightElevatedBtnTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CustomCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightTextFormFieldTheme,
    outlinedButtonTheme: CustomOutlineBtnTheme.lightOutLineButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: CustomElevatedBtnTheme.darkElevatedBtnTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: CustomCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkTextFormFieldTheme,
    outlinedButtonTheme: CustomOutlineBtnTheme.darkOutLineButtonTheme,
  );
}
