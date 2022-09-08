
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green[800],
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.amber),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(
        color: Colors.green,
        width: 5,
      ),
    ),
  ),
  scaffoldBackgroundColor: Colors.green[100] ,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.green,
      ),
      minimumSize: MaterialStateProperty.all<Size>(Size(280, 45),),
      maximumSize: MaterialStateProperty.all<Size>(
        Size(300, 50),
      ),
    ),
  ),
  textTheme: TextTheme(
    headline4: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  sliderTheme: SliderThemeData(
   // activeTickMarkColor: Colors.red,
    activeTrackColor: Colors.green[800],
    inactiveTrackColor: Colors.white24,
    thumbColor: Colors.green[800],
  ),
);

///TODO DARK THEME
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFFEB1555),
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(
        color: Colors.white70,
        width: 5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(
        color: Colors.white,
        width: 5,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.green,
      ),
      minimumSize: MaterialStateProperty.all<Size>(Size(280, 45),),
      maximumSize: MaterialStateProperty.all<Size>(
        Size(300, 50),
      ),
    ),
  ),
  textTheme: TextTheme(
    headline4: TextStyle(
      color: Colors.white,
    ),
  ),
  sliderTheme: SliderThemeData(
    // activeTickMarkColor: Colors.red,
    activeTrackColor: Color(0xFFEB1555),
    inactiveTrackColor: Colors.white24,
    thumbColor: Color(0xFFEB1555),
  ),
  scaffoldBackgroundColor: Color(0xFF0A0E21),
  // cardTheme: CardTheme(
  //   color: Colors.red,
  //
  // ),

);