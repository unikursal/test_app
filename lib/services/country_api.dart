import 'dart:async';

import 'package:dio/dio.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:retrofit/retrofit.dart';

part 'country_api.g.dart';

@RestApi(baseUrl: 'https://restcountries.com/v2')
abstract class CountryApi {
  factory CountryApi(Dio dio, {String baseUrl}) = _CountryApi;

  @GET('/all')
  Future<List<Country>> getCountries();
}
