import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/services/country_api.dart';
import 'package:phone_number_screen/services/country_service/country_service.dart';
import 'package:phone_number_screen/services/custom_locator.dart';

class CountryServiceImpl implements CountryService {
  @override
  Future<List<Country>> getCountries() {
    return getIt<CountryApi>().getCountries();
  }
}
