import 'package:flutter/material.dart';

class ProjectColors {
  static const primary = Color(0xFFFFCC00);
  static const inputFill = Color(0xFFEEEEEE);
  static const inputborder = primary;
  static const navBarActive = primary;
  static const navBarNonActive = Color(0xFF9AA6AC);
}

class ProjectTextStyle {
  static const registry = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static const input = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const navBar = TextStyle(fontSize: 10, fontWeight: FontWeight.w600);
}

class ProjectRadius {
  static const main = Radius.circular(12);
  static const button = Radius.circular(8);
}

class ProjectIcon {
  static const splash = 'assets/icons/plov_kebab.png';
  static const en = 'assets/icons/en.png';
  static const ru = 'assets/icons/ru.png';
  static const uz = 'assets/icons/uz.png';
}

class ProjectUrl {
  static const baseUrl = 'https://test.customer.api.delever.uz/';
}

class ProjectLocales {
  static const String conTinue = 'continue';
  static const String registration = 'registration';
  static const String selectLan = 'select_lang';
  static const String wrongNum = 'wrong_number';
  static const String number = 'phone_number';
}

class ProjectGap {
  static const double main = 16;
}
