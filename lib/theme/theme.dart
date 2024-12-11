
import "package:flutter/material.dart";
import "package:kiratiapp/theme/color_constants.dart";

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: white,
        surface: offWhite,
        primary: orange,
        secondary: blue,
        onBackground: orange,
        onSurface: blue,
        onPrimary: white,
        onSecondary: white),
    // textTheme:TextTheme();
);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.light(
        background: white,
        surface: offWhite,
        primary: orange,
        secondary: blue,
        onBackground: black,
        onSurface: blue,
        onPrimary: white,
        onSecondary: white),
      // textTheme:TextTheme();
);
