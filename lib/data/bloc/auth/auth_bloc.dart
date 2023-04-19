import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:plov_kebab/data/repository/auth_repo.dart';
import 'package:plov_kebab/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _authRepo = AuthRepo();

  AuthBloc() : super(AuthInitial()) {
    on<LoadData>(_loadData);
    on<CheckCustomer>(_checkCustomer);
    on<RegisterCustomer>(_register);
    on<ConfirmRegisterCode>(_confirmRegister);
    on<ConfirmLoginCode>(_confirmLogin);
    on<LogOut>(_logout);
  }

  _loadData(LoadData event, emit) async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(ProjectString.customerData);

    if (data == null) {
      emit(AuthInitial());
    } else {
      final customer = CustomerModel.fromJson(json.decode(data));
      emit(CustomerActiveState(customer));
    }
  }

  _checkCustomer(CheckCustomer event, emit) async {
    try {
      final response = await _authRepo.checkCustomerByPhone(event.phone);
      await _authRepo.login(event.phone);
      emit(CustomerExistState(response));
    } catch (error) {
      emit(CustomerNotFoundState(event.phone));
    }
  }

  _register(RegisterCustomer event, emit) async {
    await _authRepo.register(event.name, event.phone);
    emit(CustomerRegisterSuccessState(event.phone, event.name));
  }

  _confirmRegister(ConfirmRegisterCode event, emit) async {
    try {
      final response = await _authRepo.registerConfirm(event.code, event.phone);
      final customer = await _authRepo.getCustomer(response.id, response.fcmToken);
      emit(CustomerActiveState(customer));
    } catch (error) {
      emit(CodeConfirmErrorState());
    }
  }

  _confirmLogin(ConfirmLoginCode event, emit) async {
    try {
      final response = await _authRepo.loginConfirm(event.code, event.phone);
      final customer = await _authRepo.getCustomer(response.id, response.fcmToken);
      emit(CustomerActiveState(customer));
    } catch (error) {
      emit(CodeConfirmErrorState());
    }
  }

  _logout(LogOut event, emit) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.clear();
    emit(AuthInitial());
  }
}
