import 'package:flutter/material.dart';

ThemeData DefaultTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Color(0xFFFBFBFB),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFf96060),
    foregroundColor: Colors.white,
    elevation: 1, // 그림자 정도
  ),
  textTheme: TextTheme(

  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Color(0xFFFBFBFB)),
      backgroundColor: MaterialStateProperty.all(Color(0xFFf96060)),
    )
  )
  ,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFf96060),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white
  ),
);