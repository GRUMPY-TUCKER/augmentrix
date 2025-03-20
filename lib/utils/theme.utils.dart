import 'package:flutter/material.dart';

class BubblegumTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFFFFB6C1), // Bubblegum Pink
    scaffoldBackgroundColor: Color(0xFFA7C7E7), // Soft Baby Blue
    primaryColorDark:Color(0xFF4169E1),
    primaryColorLight: Color(0xFFDC143C),
    colorScheme: ColorScheme.light(
      primary: Color(0xFFFFB6C1), // Bubblegum Pink
      secondary: Color(0xFFB19CD9), // Baby Blue
      surface: Color(0xFFFFE4E1), // Soft Peach Red
      primaryFixed: Color(0xFF98FF98),
      primaryFixedDim: 	Color(0xFFFFA6C1)
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFFFB6C1),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFB19CD9)), // Lavender
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFFFE4E1), // Peach Red
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFFE4E1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFFB19CD9)), // Lavender Border
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFFB19CD9)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFFFFB6C1), width: 2), // Bubblegum Pink Focus
      ),
    ),
  );
}
