part of 'nav_bar_cubit.dart';

abstract class NavBarState extends Equatable {}

class NavBarInitial extends NavBarState {
  final String title;
  final int index;
  NavBarInitial([this.title = 'Home', this.index = 0]);
  
  @override
  List<Object?> get props => [title, index];
}
