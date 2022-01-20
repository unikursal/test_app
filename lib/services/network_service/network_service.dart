import 'package:dio/dio.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._();

  static NetworkService get instance => _instance;

  late final Dio dio;

  NetworkService._() : dio = Dio();
}
