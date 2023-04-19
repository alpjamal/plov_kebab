import 'dart:io';

import 'package:dio/dio.dart';
import 'package:plov_kebab/utils/constants.dart';

class ApiRequest {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ProjectApi.baseUrl,
      connectTimeout: Duration(seconds: 5),
      sendTimeout: Duration(seconds: 5),
    ),
  );

  final _headers = {
    'shipper': ProjectApi.shipperId,
    'platform': Platform.isIOS ? ProjectApi.iosPlatformID : ProjectApi.androidPlatformID,
  };

  Future<dynamic> doPostRequest({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    final response = await dio.post(
      path,
      data: body,
      queryParameters: query,
      options: Options(
        headers: _headers,
      ),
    );
    return response;
  }

  Future<Response> doGetRequest({
    required String path,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    final Response response = await dio.get(
      path,
      data: body,
      queryParameters: query,
      options: Options(
        headers: {
          'shipper': ProjectApi.shipperId,
          'platform': Platform.isIOS ? ProjectApi.iosPlatformID : ProjectApi.androidPlatformID,
          'Authorization': token,
        },
      ),
    );
    return response;
  }
}
