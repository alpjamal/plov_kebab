import 'package:dio/dio.dart';
import 'package:plov_kebab/utils/constants.dart';

class ApiRequest {
  final Dio dio = Dio(BaseOptions(baseUrl: ProjectUrl.baseUrl));

  Future<dynamic> doPostRequest({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) async {
    final response = await dio.post(path, data: body, queryParameters: query, options: Options(headers: headers));
    return response;
  }

  Future<Response> doGetRequest({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    final Response response = await dio.get(
      path,
      queryParameters: query,
      options: Options(headers: headers),
    );
    return response;
  }
}
