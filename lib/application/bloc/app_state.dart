import 'package:phone_number_screen/models/country.dart';

class AppState {
  final List<Country> countries;
  final String countyCode;

  const AppState({
    required this.countries,
    required this.countyCode,
  });

  AppState copyWith({
    List<Country>? countries,
    String? countyCode,
  }) {
    return AppState(
      countries: countries ?? this.countries,
      countyCode: countyCode ?? this.countyCode,
    );
  }
}
