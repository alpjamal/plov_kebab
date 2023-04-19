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
  static const descriptionBold = TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold);
  static const description = TextStyle(fontSize: 13, color: Colors.black);
  static const productTitle = TextStyle(fontSize: 15);
  static const productDescription = TextStyle(fontSize: 13, color: Colors.grey);
  static const productPrice = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
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
  static const placeholder = 'assets/icons/food_placeholder.png';
  static const emptyAddress = 'assets/icons/empty_address.png';
}

class ProjectApi {
  static const baseUrl = 'https://test.customer.api.delever.uz/';
  static const imageUrl = 'https://test.cdn.delever.uz/delever/';
  static const shipperId = 'd4b1658f-3271-4973-8591-98a82939a664';
  static const androidPlatformID = "6bd7c2e3-d35e-47df-93ce-ed54ed53f95f";
  static const iosPlatformID = "f6631db7-09d0-4cd9-a03a-b7a590abb8c1";
  static const categoryWithProducts = '/v2/category-with-products';
  static const bannerPath = '/v1/banner';
  static const favourites = '/v2/product-favourites';
  static const phone = '/v1/customers/phone';
  static const getCustomer = '/v1/customers/';
  static const logIn = '/v1/customers/login';
  static const register = '/v1/customers/register';
  static const confirmRegister = '/v1/customers/register-confirm';
  static const confirmLogin = '/v1/customers/confirm-login';
  static const customerAddress = '/v1/customer_address';
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
  static const String settings = 'settings';
  static const String editProfile = 'edit_profile';
  static const String accountManagement = 'account_management';
  static const String confirm = 'confirm';
  static const String addProduct = 'add_product';
  static const String name = 'name';
  static const String phoneNum = 'phone_number';
  static const String birthDate = 'birth_date';
  static const String enterBirthDate = 'enter_birth';
  static const String yourBirthDate = 'your_birth';
  static const String add = 'add';
  static const String myAddresses = 'my_addresses';
  static const String addAddress = 'add_address';
  static const String noneAddresses = 'none_adresses';
  static const String branches = 'branches';
  static const String privacyPolicy = 'privacy_policy';
}

class ProjectGap {
  static const double main = 16;
}

class ProjectRoute {
  static const splashScreen = '/splash-screen';
  static const registyEnterNumber = '/registry-enter-number-screen';
  static const registryEnterCode = '/get-otp-code-screen';
  static const homeScreen = '/home-screen';
  static const settings = '/settings-screen';
  static const editProfileScreen = '/edit-profile-screen';
  static const manageAccount = '/manage-account-screen';
  static const productScreen = '/product-screen';
  static const registryEnterName = '/registry-enter-name';
  static const profileScreen = '/profile-screen';
  static const myAddress = '/my-address-screen';
  static const branches = '/branches-screen';
  static const about = '/about-screen';
}

class ProjectString {
  static const customerData = 'customerData';
}
