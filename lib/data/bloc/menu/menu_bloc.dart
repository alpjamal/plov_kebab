import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:plov_kebab/data/repository/menu_repo.dart';

import '../../models/menu.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository _menuRepo = MenuRepository();

  MenuBloc() : super(MenuLoading()) {
    on<LoadMenu>(_getMenu);
  }

  _getMenu(event, emit) async {
    try {
      Menu result = await _menuRepo.loadMenu();
      emit(MenuLoaded(result));
    } on DioError catch (error) {
      emit(MenuloadError(error));
    } catch (error) {
      //
    }
  }
}
