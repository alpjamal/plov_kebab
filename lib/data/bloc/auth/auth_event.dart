part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class LoadData extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class CheckCustomer extends AuthEvent {
  final String phone;
  CheckCustomer(this.phone);
  @override
  List<Object?> get props => [phone];
}

class RegisterCustomer extends AuthEvent {
  final String name;
  final String phone;
  RegisterCustomer(this.name, this.phone);
  @override
  List<Object?> get props => [name, phone];
}

class ConfirmRegisterCode extends AuthEvent {
  final String code;
  final String phone;
  ConfirmRegisterCode(this.code, this.phone);
  @override
  List<Object?> get props => [code, phone];
}

class ConfirmLoginCode extends AuthEvent {
  final String code;
  final String phone;
  ConfirmLoginCode(this.code, this.phone);
  @override
  List<Object?> get props => [code, phone];
}

class LogOut extends AuthEvent {
  @override
  List<Object?> get props => [];
}
