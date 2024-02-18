import 'package:flutter/material.dart';

ThemeData themeData(){
  return ThemeData(
    primaryColor: Color(0xFF8B5CF6),
    primarySwatch: Colors.deepPurple,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w900,
        color: Color(0xFFFFFFFF),
        fontSize: 24
      ),
      headline2: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
        fontSize: 16
      ),
      headline3: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        color: Color(0xFFC4C4C6),
        fontSize: 16
      ),
      headline4: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: Color(0xFFC4C4C6),
        fontSize: 16
      ),
      bodyText1: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: Color(0xFFC4C4C6),
        fontSize: 14
      ),
      bodyText2: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
        fontSize: 14
      ),
    )
  );
}