import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Quicksand',
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.textColor,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.primaryColor,
    ),
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Quicksand',
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkTextColor,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.darkPrimaryColor,
    ),
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.darkPrimaryColor,
      secondary: AppColors.darkAccentColor,
    ),
  );
}
