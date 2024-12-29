import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffE2BE7F);
   static const Color black = Color(0xff202020);
    static const Color white = Color(0xffffffff);
    static const Color darkGray = Color(0xff202020B2);
    static const Color transparent = Colors.transparent;
    

    static ThemeData lightTheme = ThemeData();

    static ThemeData DarkTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primary,
        showSelectedLabels:true,
        showUnselectedLabels: false, 
        selectedItemColor: white,
        selectedLabelStyle: TextStyle(color: white),
        
      ) 
    );
}
