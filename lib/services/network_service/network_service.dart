import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:phone_number_screen/services/network_service/custom_interceptor.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._();

  static NetworkService get instance => _instance;

  late final Dio dio;

  NetworkService._() {
    dio = Dio();
    dio.interceptors.add(
      CustomInterceptors(),
    );
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}
