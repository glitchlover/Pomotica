import 'package:flutter/material.dart';

class MyColors {
  static const brightness = Brightness.dark;
  static const appBackgroundColor = Color.fromARGB(255, 25, 15, 44);
  static const scaffoldBackgroundColor = Color(0XFF291946);
  static const backgroundColor = Color(0xFF141f2a);
  static const secondarybackgroundColor = Color.fromARGB(255, 30, 31, 51);
  static const shadowColor = Color.fromARGB(255, 33, 16, 48);
  static const dividerColor = Color.fromARGB(255, 19, 26, 34);
  static const primaryColor = Color(0xFF018ff5);
  static const primaryColorLight = Color.fromARGB(255, 86, 176, 250);
  static const blue = Color.fromARGB(255, 86, 176, 250);
  static const pink = Color.fromARGB(255, 250, 93, 127);
  static const pinkDark = Colors.pinkAccent;
  static const yellow = Color(0xFFF2A32F);
  static const green = Color(0xFF268F69);
  static const primaryWhite =
      Color.fromARGB(255, 221, 223, 235); //TODO: change here also
  static const toggleableActiveColor = primaryColor;

  static ThemeData colorThemeData() => ThemeData(
        brightness: Brightness.dark,
        primaryColorLight: MyColors.primaryColorLight,
        primaryColor: MyColors.primaryColor,
        appBarTheme:const AppBarTheme(
            backgroundColor:MyColors.appBackgroundColor
        ),
        scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
        backgroundColor: MyColors.backgroundColor,
        shadowColor: MyColors.shadowColor,
        dividerColor: MyColors.dividerColor,
      );
}
