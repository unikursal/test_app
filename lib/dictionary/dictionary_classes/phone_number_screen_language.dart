import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_screen_language.freezed.dart';
part 'phone_number_screen_language.g.dart';

@freezed
class PhoneNumberScreenLanguage with _$PhoneNumberScreenLanguage {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PhoneNumberScreenLanguage({
    @JsonKey(name: 'title') required String title,
  }) = _PhoneNumberScreenLanguage;

  factory PhoneNumberScreenLanguage.fromJson(Map<String, dynamic> json) => _$PhoneNumberScreenLanguageFromJson(json);
}
