part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {}

class GetCustomer extends AuthEvent {
  final String phone;
  GetCustomer(this.phone);
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

class ConfirmCode extends AuthEvent {
  final String code;
  final String phone;
  ConfirmCode(this.code, this.phone);
  @override
  List<Object?> get props => [code, phone];
}
