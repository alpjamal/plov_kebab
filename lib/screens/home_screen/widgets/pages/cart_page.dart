import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';
import 'package:plov_kebab/utils/constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, required this.changeIndex});
  final Function changeIndex;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.cart)),
      body: Column(
        children: [
          Spacer(),
          Image.asset(ProjectIcon.emptyCart, height: 150),
          SizedBox(height: 50),
          LocaleText('cart_is_empty'),
          Spacer(),
          CustomButton(
            onPressed: () => changeIndex(0),
            title: ProjectLocales.addProduct,
          ),
        ],
      ),
    );
  }
}
