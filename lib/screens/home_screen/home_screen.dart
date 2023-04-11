import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/data/bloc/nav_bar/nav_bar_cubit.dart';
import 'package:plov_kebab/screens/home_screen/widgets/navbar.dart';
import 'package:plov_kebab/screens/home_screen/widgets/tabs/cart_tab.dart';
import 'package:plov_kebab/screens/home_screen/widgets/tabs/home_tab.dart';
import 'package:plov_kebab/screens/home_screen/widgets/tabs/my_orders.dart';
import 'package:plov_kebab/screens/home_screen/widgets/tabs/profile_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        state = state as NavBarInitial;
        return Scaffold(
          body: IndexedStack(
            index: state.index,
            children: [
              HomeTab(),
              CartTab(),
              MyOrdersTab(),
              ProfileTab(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
