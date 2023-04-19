import 'package:dio/dio.dart';
import 'package:plov_kebab/data/models/customer_model.dart';

import '../../utils/constants.dart';
import '../Services/http_services.dart';

class AuthRepo {
  Future<CustomerModel> getCustommerByPhone(String phoneNumber) async {
    final Response response = await ApiRequest().doPostRequest(
      path: ProjectApi.phone,
      body: {
        'phone': phoneNumber,
      },
    );
    return CustomerModel.fromJson(response.data);
  }

  Future<void> registerCustomer(String name, String phoneNumber) async {
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

  Future<void> registerConfirm(String code, String phoneNumber) async {
    await ApiRequest().doPostRequest(
      path: ProjectApi.registerConfirm,
      body: {
        'code': code,
        'phone': phoneNumber,
      },
    );
  }
}
