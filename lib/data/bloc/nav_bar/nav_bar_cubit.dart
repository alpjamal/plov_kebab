import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/utils/constants.dart';
part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());

  List<String> appBarTitles = [
    ProjectLocales.home,
    ProjectLocales.cart,
    ProjectLocales.myOrders,
    ProjectLocales.profile,
  ];

  changeTab(int index) {
    emit(NavBarInitial(appBarTitles[index], index));
  }
}
