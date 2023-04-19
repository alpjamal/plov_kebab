import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/utils/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.activeIndex, required this.changeIndex});
  final int activeIndex;
  final Function changeIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (value) {
            if (state is! CustomerActiveState && (value == 2 || value == 3)) {
              Navigator.of(context).pushNamed(ProjectRoute.registyEnterNumber);
            } else {
              changeIndex(value);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: context.localeString(ProjectLocales.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: context.localeString(ProjectLocales.cart),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: context.localeString(ProjectLocales.myOrders),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: context.localeString(ProjectLocales.profile),
            ),
          ],
        );
      },
    );
  }
}
