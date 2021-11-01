import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/resources/app_colors.dart';
import 'package:chat_app/resources/app_font_sizes.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      background: AppColors.mercury,
      primary: AppColors.tuna,
      primaryVariant: AppColors.black,
      secondary: AppColors.secondaryColor,
      secondaryVariant: AppColors.subTitleColor,
      surface: AppColors.white,
      error: AppColors.red,
      onBackground: AppColors.mercury,
      onPrimary: AppColors.black,
      onSecondary: AppColors.secondaryColor,
      onError: AppColors.red,
      onSurface: AppColors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF363A44),
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        fontSize: AppFontSizes.greatPrimer,
        fontWeight: FontWeight.w500,
      ),
    ),
    scaffoldBackgroundColor: AppColors.mercury,
    iconTheme: const IconThemeData(color: AppColors.tuna),
    textTheme: const TextTheme(
      subtitle1: TextStyle(color: AppColors.subTitleColor),
    ),
    cardColor: Colors.white,
    hintColor: AppColors.tunaWithOpacity,
    cardTheme: const CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      margin: EdgeInsets.all(0),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
