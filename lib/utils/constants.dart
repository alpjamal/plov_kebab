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
  static const input = TextStyle(fontSize: 15);
  static const navBar = TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.grey);
  static const appBar = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
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
  static const emptyCart = 'assets/icons/empty_cart.png';
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
  static const String home = 'home';
  static const String cart = 'cart';
  static const String myOrders = 'my_orders';
  static const String profile = 'profile';
  static const String currentOrders = 'current_orders';
  static const String orderHistory = 'order_history';
}

class ProjectGap {
  static const double main = 16;
}
