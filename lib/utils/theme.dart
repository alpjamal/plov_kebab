import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './constants.dart';

class ProjectTheme {
  static final light = ThemeData(
    primaryColor: ProjectColors.primary,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll<Color>(ProjectColors.primary),
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors.primary,
        elevation: 0,
        textStyle: ProjectTextStyle.input.copyWith(color: Colors.black),
        minimumSize: Size.fromHeight(50),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(ProjectRadius.button),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ProjectColors.inputFill,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(ProjectRadius.button),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.primary),
        borderRadius: BorderRadius.all(ProjectRadius.button),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
  );
}