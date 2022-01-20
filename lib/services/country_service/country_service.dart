import 'package:phone_number_screen/models/country.dart';

abstract class CountryService{
  Future<List<Country>> getCountries();
}