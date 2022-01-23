import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_number_screen/application/bloc/app_event.dart';
import 'package:phone_number_screen/application/bloc/app_state.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/services/country_service/country_service.dart';
import 'package:phone_number_screen/services/custom_locator.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          AppState(
            countries: [],
            countyCode: WidgetsBinding.instance?.window.locale.countryCode ?? defaultCountryCode,
          ),
        ) {
    on<LoadCountriesEvent>((event, emit) async {
      List<Country> countries = await getIt<CountryService>().getCountries();

      emit(state.copyWith(countries: countries));
    });

    on<SetCallingCodeEvent>((event, emit) {
      emit(
        state.copyWith(countyCode: event.code),
      );
    });
  }
}
