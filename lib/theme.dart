import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onBackground: Colors.black,
  onSurface: Colors.black,
  onError: Colors.black,
  primary: Color(0xfff44336),
  primaryVariant: Color(0xffD32F2F),
  secondary: Color(0xffFF4081),
  secondaryVariant: Color(0xffFF4070),
  surface: Colors.white,
  background: Colors.white,
  error: Color(0xffb00020),
);

final IconThemeData lightIconThemeData =
    IconThemeData(color: lightColorScheme.primary, size: 30);

ThemeData lightTheme() => ThemeData(
      primarySwatch: Colors.red,
      brightness: lightColorScheme.brightness,
      primaryColor: lightColorScheme.primary,
      primaryColorBrightness:
          ThemeData.estimateBrightnessForColor(lightColorScheme.primary),
      canvasColor: lightColorScheme.background,
      accentColor: lightColorScheme.secondary,
      accentColorBrightness:
          ThemeData.estimateBrightnessForColor(lightColorScheme.secondary),
      scaffoldBackgroundColor: lightColorScheme.background,
      bottomAppBarColor: lightColorScheme.surface,
      cardColor: lightColorScheme.surface,
      dividerColor: lightColorScheme.onSurface.withOpacity(0.12),
      backgroundColor: lightColorScheme.background,
      dialogBackgroundColor: lightColorScheme.background,
      errorColor: lightColorScheme.error,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      indicatorColor: lightColorScheme.onPrimary,
      applyElevationOverlayColor: true,
      colorScheme: lightColorScheme,
      appBarTheme: AppBarTheme(
          color: lightColorScheme.background,
          elevation: 0,
          brightness: lightColorScheme.brightness,
          iconTheme: lightIconThemeData,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
          actionsIconTheme: lightIconThemeData),
      cursorColor: lightColorScheme.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      toggleableActiveColor: darkColorScheme.primary,
      textSelectionHandleColor: Colors.red[300],
      highlightColor: Colors.red[200],
      splashColor: Colors.pink[200],
    );

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onBackground: Colors.white,
  onSurface: Colors.white,
  onError: Colors.white,
  primary: Color(0xfff44336),
  primaryVariant: Color(0xffD32F2F),
  secondary: Color(0xffFF4081),
  secondaryVariant: Color(0xffFF4070),
  surface: Color(0xff121212),
  background: Color(0xff121212),
  error: Color(0xffcf6679),
);

final IconThemeData darkIconThemeData =
    IconThemeData(color: lightColorScheme.secondary, size: 30);

ThemeData darkTheme() => ThemeData(
      primarySwatch: Colors.red,
      brightness: darkColorScheme.brightness,
      primaryColor: darkColorScheme.primary,
      primaryColorBrightness:
          ThemeData.estimateBrightnessForColor(darkColorScheme.primary),
      canvasColor: darkColorScheme.background,
      accentColor: darkColorScheme.secondary,
      accentColorBrightness:
          ThemeData.estimateBrightnessForColor(darkColorScheme.secondary),
      scaffoldBackgroundColor: darkColorScheme.background,
      bottomAppBarColor: darkColorScheme.surface,
      cardColor: darkColorScheme.surface,
      dividerColor: darkColorScheme.onSurface.withOpacity(0.12),
      backgroundColor: darkColorScheme.background,
      dialogBackgroundColor: darkColorScheme.background,
      errorColor: darkColorScheme.error,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      indicatorColor: darkColorScheme.onPrimary,
      applyElevationOverlayColor: true,
      colorScheme: darkColorScheme,
      appBarTheme: AppBarTheme(
          color: darkColorScheme.background,
          elevation: 0,
          brightness: darkColorScheme.brightness,
          iconTheme: darkIconThemeData,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          actionsIconTheme: darkIconThemeData),
      cursorColor: lightColorScheme.secondary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      toggleableActiveColor: darkColorScheme.primary,
      textSelectionHandleColor: Colors.red[300],
      highlightColor: Colors.red[200],
      splashColor: Colors.pink[200],
    );
