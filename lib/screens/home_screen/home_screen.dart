import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/data/bloc/nav_bar/nav_bar_cubit.dart';
import 'package:plov_kebab/screens/home_screen/widgets/navbar.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/cart_page.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/home_page.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/my_orders_page.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/profile_tab_page.dart';
import 'package:plov_kebab/screens/registry_screen/enter_number.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        state = state as NavBarInitial;
        return Scaffold(
          body: IndexedStack(
            index: state.index,
            children: [
              HomePage(),
              CartPage(),
              if (state is CustomerActiveState) ...[
                MyOrdersPage(),
                ProfilePage(),
              ],
              if (state is! CustomerActiveState) RegistrationScreen(),
              if (state is! CustomerActiveState) RegistrationScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
