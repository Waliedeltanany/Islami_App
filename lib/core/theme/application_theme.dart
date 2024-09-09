import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        color: Color(0xFF242424),
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF000000),
      selectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 13,
        fontWeight: FontWeight.w800,
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF000000),
        size: 35,
      ),
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 11,
        fontWeight: FontWeight.w800,
      ),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
        size: 28,
      ),
    ),
      dividerTheme: DividerThemeData(
        color: primaryColor,
        space: 10,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          color: Color(0xFF242424),
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 25,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 25,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 20,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w400,
        ),
      ));
}
