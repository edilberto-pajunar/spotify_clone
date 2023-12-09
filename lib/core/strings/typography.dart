import 'package:flutter/material.dart';
import 'package:spotify_clone/core/strings/color.dart';

class CustomText {
  static TextTheme theme = TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 46.0,
      color: Colors.white,
      fontFamily: "Graphik"
    ),
    titleLarge: const TextStyle(
      fontSize: 24.0,
      color: Colors.white,
    ),
    titleMedium: const TextStyle(
      fontSize: 22.0,
      color: Colors.white,
    ),
    titleSmall: const TextStyle(
      fontSize: 20.0,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontSize: 12.0,
      color: ColorTheme.greyColor,
    ),
    labelMedium: TextStyle(
      fontSize: 10.0,
      color: ColorTheme.greyColor,
    ),
    labelSmall: TextStyle(
      fontSize: 8.0,
      color: ColorTheme.greyColor,
    ),
  );
}
