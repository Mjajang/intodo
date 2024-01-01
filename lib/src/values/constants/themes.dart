import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Quicksand',
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Quicksand',
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.darkPrimaryColor,
      secondary: AppColors.darkAccentColor,
    ),
  );
}
