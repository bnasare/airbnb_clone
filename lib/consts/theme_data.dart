import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        primary: Colors.black,
        secondary: Colors.red[900],
        tertiary: Colors.black.withOpacity(0.4)),
    textTheme: GoogleFonts.nunitoSansTextTheme(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
  );
}
