import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/nav_bar/nav_bar_cubit.dart';
import 'package:plov_kebab/utils/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<NavBarCubit>(context, listen: true);
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        state = state as NavBarInitial;
        return BottomNavigationBar(
          currentIndex: state.index,
          onTap: (value) => controller.changeTab(value),
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
              icon: Icon(Icons.account_circle_outlined),
              label: context.localeString(ProjectLocales.profile),
            ),
          ],
        );
      },
    );
  }
}
