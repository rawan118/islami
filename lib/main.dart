import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/home_sceen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: HomeScreen(),

theme:AppTheme.lightTheme ,
darkTheme:AppTheme.DarkTheme ,
themeMode:ThemeMode.dark ,

    );
}
}
