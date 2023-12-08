import 'package:core/config/logging_interceptor.dart';
import 'package:dio/dio.dart';

class DioModule with DioMixin implements Dio {
  DioModule() {
    options = BaseOptions(
        baseUrl: '',
        contentType: 'application/json',
        connectTimeout: const Duration(milliseconds: 300000),
        sendTimeout: const Duration(milliseconds: 300000),
        receiveTimeout: const Duration(milliseconds: 300000),
        headers: {
          'accept': 'application/json',
        });

    options = options;

    interceptors.add(LoggingInterceptor());
    httpClientAdapter = HttpClientAdapter();
  }
}
