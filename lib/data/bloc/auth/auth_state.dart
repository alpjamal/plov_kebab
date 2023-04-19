part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class CustomerExistState extends AuthState {
  final CustomerModel customer;
  CustomerExistState(this.customer);
  @override
  List<Object?> get props => [customer];
}

class CustomerNotFoundState extends AuthState {
  final String phone;
  CustomerNotFoundState(this.phone);
  @override
  List<Object?> get props => [phone];
}

class CustomerActiveState extends AuthState {
  final CustomerModel customer;
  CustomerActiveState(this.customer);
  @override
  List<Object?> get props => [customer];
}

class CustomerRegisterSuccessState extends AuthState {
  final String phone;
  final String name;
  CustomerRegisterSuccessState(this.phone, this.name);
  @override
  List<Object?> get props => [phone, name];
}

class CodeConfirmErrorState extends AuthState {
  @override
  List<Object?> get props => [];
}