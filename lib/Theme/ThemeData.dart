import 'package:flutter/material.dart';
import 'package:jiffi/Constants/constants.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.grey,
  fontFamily: "Poppins",
  appBarTheme:
      AppBarTheme(brightness: Brightness.dark, color: Constants.APPBAR_COLOR),
  // inputDecorationTheme: InputDecorationTheme(
  //   hintStyle: TextStyle(color: AppColors.textGrey),
  //   labelStyle: TextStyle(color: AppColors.white),
  // ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Constants.BACKGROUND_COLOR,
      elevation: 20.0,
      selectedItemColor: Constants.SELECTED_ITEM_COLOR),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Constants.BACKGROUND_COLOR,

  // accentColor: AppColors.darkPink,
  accentIconTheme: IconThemeData(color: Colors.white),
);
