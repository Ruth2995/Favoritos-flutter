import 'package:flutter/material.dart';

class Tema {
  static const Color primary=Colors.pinkAccent;
  static final ThemeData lightheme=ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white60,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 252, 152, 186),
        elevation: 0,
        shape: const StadiumBorder(),
        foregroundColor: Colors.black
      )
    ),
    iconTheme: IconThemeData(
      color: const Color.fromARGB(255, 219, 148, 171),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    )
  ); //copyWith

}