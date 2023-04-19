import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constants.dart';
import '../Services/http_services.dart';

class AuthRepo {
  Future<CustomerModel> checkCustomerByPhone(String phoneNumber) async {
    final Response response = await ApiRequest().doPostRequest(
      path: ProjectApi.phone,
      body: {
        'phone': phoneNumber,
      },
    );
    return CustomerModel.fromJson(response.data);
  }

  Future<CustomerModel> getCustomer(String id, String token) async {
    final Response response = await ApiRequest().doGetRequest(
      path: '${ProjectApi.getCustomer}$id',
      token: token,
    );
    final customer = CustomerModel.fromJson(response.data);

    var prefs = await SharedPreferences.getInstance();
    prefs.setString(ProjectString.customerData, json.encode(customer.toJson()));
    return customer;
  }

  Future<void> register(String name, String phoneNumber) async {
    await ApiRequest().doPostRequest(
      path: ProjectApi.register,
      body: {
        'name': name,
        'phone': phoneNumber,
        'tag': 'K0Moxhlmwe/',
        'registration_source': 'app',
      },
    );
  }

  Future<CustomerModel> registerConfirm(String code, String phoneNumber) async {
    Response response = await ApiRequest().doPostRequest(
      path: ProjectApi.confirmRegister,
      body: {
        'code': code,
        'phone': phoneNumber,
      },
    );
    return CustomerModel.fromJson(response.data);
  }

  Future<CustomerModel> loginConfirm(String code, String phoneNumber) async {
    Response response = await ApiRequest().doPostRequest(
      path: ProjectApi.confirmLogin,
      body: {
        'code': code,
        'phone': phoneNumber,
      },
    );
    return CustomerModel.fromJson(response.data);
  }

  Future<void> login(String phoneNumber) async {
    await ApiRequest().doPostRequest(
      path: ProjectApi.logIn,
      body: {
        'phone': phoneNumber,
        'tag': 'K0Moxhlmwe/',
      },
    );
  }
}
