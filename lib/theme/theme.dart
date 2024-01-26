import 'package:flutter/material.dart';

var DefaultTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    elevation: 1, // 그림자 정도
  ),
  textTheme: TextTheme(

  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.blueAccent,
    selectedItemColor: Colors.black,
  ),
);