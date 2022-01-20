// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CountryApi implements CountryApi {
  _CountryApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://restcountries.com/v2';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Country>> getCountries() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Country>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/all',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Country.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
