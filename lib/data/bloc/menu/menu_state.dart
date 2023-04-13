part of 'menu_bloc.dart';

abstract class MenuState extends Equatable {}

class MenuLoading extends MenuState {
  @override
  List<Object?> get props => [];
}

class MenuLoaded extends MenuState {
  final Menu menu;
  MenuLoaded(this.menu);

  @override
  List<Object?> get props => [];
}

class MenuloadError extends MenuState {
  final DioError error;

  MenuloadError(this.error);
  @override
  List<Object?> get props => [error];
}
