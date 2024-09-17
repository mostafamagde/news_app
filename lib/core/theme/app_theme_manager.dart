import 'package:flutter/material.dart';

import 'color_pallete.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorPallete.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPallete.primaryLightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 35,
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w400,
        fontFamily: "Exo",
      ),
      headlineLarge: TextStyle(
        color: ColorPallete.drawerTextColor,
        fontSize: 24,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins",
          fontSize: 24,
          color: Colors.white),
      bodyLarge: TextStyle(
          color: ColorPallete.layoutTitleColor,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      bodySmall: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: ColorPallete.primaryLightColor,
      ),
    ),
  );
}
