import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_number_screen/models/flag.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country{
  const factory Country(
  {
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'callingCodes') required List<String> callingCodes,
    @JsonKey(name: 'flags') required Flag flag,
    @JsonKey(name: 'alpha2Code') required String code,
}
      ) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
