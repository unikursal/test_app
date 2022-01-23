import 'package:dio/dio.dart';
import 'package:phone_number_screen/res/app_const.dart';

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return super.onRequest(options, handler);
  }
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i(response);
    super.onResponse(response, handler);
  }
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logger.e(err);
    super.onError(err, handler);
  }
}