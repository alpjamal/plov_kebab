import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/nav_bar/nav_bar_cubit.dart';
import 'package:plov_kebab/utils/constants.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

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
          Padding(
            padding: EdgeInsets.all(ProjectGap.main),
            child: ElevatedButton(
              onPressed: () {
                context.read<NavBarCubit>().changeTab(0);
              },
              child: Text('Add product'),
            ),
          ),
        ],
      ),
    );
  }
}
