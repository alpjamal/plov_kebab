import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './constants.dart';

class ProjectTheme {
  static final light = ThemeData(
    scaffoldBackgroundColor: Color(0xffF5F5F5),
    primaryColor: ProjectColors.primary,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll<Color>(ProjectColors.primary),
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: Colors.black,
      titleTextStyle: ProjectTextStyle.appBar,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicator: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(ProjectRadius.main),
      ),
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
        borderRadius: BorderRadius.all(ProjectRadius.main),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ProjectColors.primary),
        borderRadius: BorderRadius.all(ProjectRadius.main),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ProjectColors.primary,
      selectionColor: ProjectColors.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      selectedItemColor: ProjectColors.primary,
      selectedLabelStyle: ProjectTextStyle.navBar,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: ProjectTextStyle.navBar,
    ),
  );
}
