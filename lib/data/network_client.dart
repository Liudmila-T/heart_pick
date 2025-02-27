import 'package:dio/dio.dart';

class NetworkClient {
  NetworkClient({Dio? dio}) : _dioClient = dio ?? _dio();

  static const requestsTimeout = Duration(seconds: 30);
  final Dio _dioClient;

  Dio get dio => _dioClient;

  static Dio _dio() {
    final dio = Dio()
      ..options.baseUrl = 'https://dayme.com.ua'
      ..options.connectTimeout = requestsTimeout
      ..options.receiveTimeout = requestsTimeout;

    return dio;
  }
}
