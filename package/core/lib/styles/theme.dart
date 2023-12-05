import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightAppTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Color(0xff543fd6),
      onPrimary: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto().copyWith(
        fontSize: 57,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: GoogleFonts.roboto().copyWith(
        fontSize: 45,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: GoogleFonts.roboto().copyWith(
        fontSize: 36,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: GoogleFonts.roboto().copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.roboto().copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: GoogleFonts.roboto().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.roboto().copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.roboto().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.roboto().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.roboto().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.roboto().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.roboto().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.roboto().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.roboto().copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
