import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextStyles {
  static TextStyle blackTextStyle =
      GoogleFonts.poppins(color: AppColors.textColor);
  static TextStyle whiteTextStyle =
      GoogleFonts.poppins(color: AppColors.primaryColor);
  static TextStyle darkBlackTextStyle =
      GoogleFonts.poppins(color: AppColors.darkTextColor);
  static TextStyle darkWhiteTextStyle =
      GoogleFonts.poppins(color: AppColors.darkPrimaryColor);
}
