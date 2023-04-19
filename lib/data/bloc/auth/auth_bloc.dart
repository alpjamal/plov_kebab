import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:plov_kebab/data/repository/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _authRepo = AuthRepo();

  AuthBloc() : super(AuthInitial()) {
    on<GetCustomer>(_getCustommerByPhone);
    on<RegisterCustomer>(_registerCustommer);
    on<ConfirmCode>(_registerConfirm);
  }

  _getCustommerByPhone(GetCustomer event, emit) async {
    emit(AuthInitial());
    try {
      final response = await _authRepo.getCustommerByPhone(event.phone);
      emit(GetCustomerSuccessState(response));
    } catch (error) {
      emit(CustomerNotFoundState(event.phone));
    }
  }

  _registerCustommer(RegisterCustomer event, emit) async {
    emit(AuthInitial());
    await _authRepo.registerCustomer(event.name, event.phone);
    emit(CustomerRegisterSuccessState(event.phone, event.name));
  }

  _registerConfirm(ConfirmCode event, emit) async {
    emit(AuthInitial());
    try {
      await _authRepo.registerConfirm(event.code, event.phone);
      emit(CodeConfirmSuccessState());
      final response = await _authRepo.getCustommerByPhone(event.phone);
      emit(CustomerActiveState(response));
    } catch (error) {
      print('--------------------$error--------------------');
      emit(CodeConfirmErrorState());
    }
  }
}
