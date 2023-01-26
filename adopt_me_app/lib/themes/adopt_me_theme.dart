import 'package:flutter/material.dart';
import 'adopt_me_colors.dart';

final _defaultTheme = ThemeData.light();

ThemeData adoptMeTheme = ThemeData(
  backgroundColor: AdoptMeColors.white,
  primaryColor: AdoptMeColors.white,
  primarySwatch: AdoptMeColors.primaryColor,
  colorScheme: _defaultTheme.colorScheme.copyWith(
      primary: AdoptMeColors.white,
      secondary: AdoptMeColors.coralRed,
      surface: AdoptMeColors.white,
      tertiary: AdoptMeColors.grey,
      onTertiary: AdoptMeColors.blueGrey,
      onSurface: AdoptMeColors.black,
      onPrimary: AdoptMeColors.lightGrey,
      onSecondary: AdoptMeColors.white,
    ),

  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      fontSize: 28,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: 38,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
  ),
);
