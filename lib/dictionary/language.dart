import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class Language with _$Language {
  const factory Language({
    @JsonKey(name: 'phone_number_screen') required PhoneNumberScreenLanguage phoneNumberScreenLanguage,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
