import 'package:get_it/get_it.dart';
import 'package:phone_number_screen/services/country_api.dart';
import 'package:phone_number_screen/services/country_service/country_service.dart';
import 'package:phone_number_screen/services/country_service/country_service_impl.dart';
import 'package:phone_number_screen/services/network_service/network_service.dart';

GetIt getIt = GetIt.instance;

void register() {
  getIt.registerSingleton<CountryApi>(
    CountryApi(NetworkService.instance.dio),
  );

  getIt.registerSingleton<CountryService>(
    CountryServiceImpl(),
  );
}
