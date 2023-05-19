import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightcolor = Color(0xFFB7935F);
  static ThemeData lighttheme = ThemeData(
      primaryColor: lightcolor,
      scaffoldBackgroundColor: Colors.transparent,
      applyElevationOverlayColor: true,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(0xFF242424),
        ),
        titleSmall: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        ),
        bodySmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w300,
          color: Color(0xFF242424),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightcolor,
        type:   BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
        unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12,
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black54,
          size: 30,
        ),
        elevation: 0.0,
      ));
  static ThemeData darktheme = ThemeData();
}
