import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Color(0xFF1D3233), // Primary color
      scaffoldBackgroundColor: Color(0xFF1C3132), // Background color
      colorScheme: ColorScheme.dark(
        primary: Color(0xFF1D3233),
        secondary: Color(0xFF869DA3), // Accent color
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
        bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
        titleLarge: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF869DA3), // Button color
          foregroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF1D3132),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xFF869DA3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xFF869DA3), width: 2),
        ),
        hintStyle: TextStyle(color: Colors.white70),
      ),
    );
  }
}
