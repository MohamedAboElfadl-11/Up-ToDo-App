import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/core/utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    // scaffold background color
    scaffoldBackgroundColor: AppColors.background,
    // text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 32.0,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.white.withOpacity(0.44),
      ),
    ),
    // button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  );
}
