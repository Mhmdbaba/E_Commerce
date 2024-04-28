import 'package:e_commerce_app_v2/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_app_v2/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Popins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TChechboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottonSheetTheme.lightBottonSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevtedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Popins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TChechboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottonSheetTheme.darkBottonSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevtedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
