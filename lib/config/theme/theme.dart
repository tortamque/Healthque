import 'package:flutter/material.dart';

ThemeData themeData({
  required Color color,
}) =>
    ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: color),
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: Colors.black),
        displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
        displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
