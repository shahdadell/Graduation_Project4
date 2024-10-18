import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryColor =  Colors.deepOrange ;
  //---------------------------------------------------//
  static ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    // scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        // fontFamily: "Poppins",
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        // fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        // fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        // fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        // fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}