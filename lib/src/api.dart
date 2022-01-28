import 'package:dio/dio.dart';

abstract class Api {
  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> postData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    FormData? data,
  });
}

class ApiService extends Api {
  final _dio = Dio();

  @override
  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response _response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: Options(headers: headers ?? {}),
      );
      return _response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response> postData(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    FormData? data,
  }) async {
    try {
      Response _response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers ?? {},
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      return _response;
    } on DioError {
      rethrow;
    }
  }
}
