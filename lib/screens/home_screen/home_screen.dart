import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/screens/home_screen/widgets/navbar.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/cart_page.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/home_page.dart';
import 'package:plov_kebab/screens/home_screen/widgets/pages/my_orders_page.dart';
import 'package:plov_kebab/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  _changeIndex(int i) {
    _index = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: _index,
            children: [
              HomePage(),
              CartPage(changeIndex: _changeIndex),
              if (state is CustomerActiveState) MyOrdersPage(),
            ],
          ),
          bottomNavigationBar: BottomNavBar(changeIndex: _changeIndex, activeIndex: _index),
        );
      },
    );
  }
}
