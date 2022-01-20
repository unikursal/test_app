// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$$_LanguageFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Language',
      json,
      ($checkedConvert) {
        final val = _$_Language(
          phoneNumberScreenLanguage: $checkedConvert(
              'phone_number_screen',
              (v) => PhoneNumberScreenLanguage.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'phoneNumberScreenLanguage': 'phone_number_screen'},
    );

Map<String, dynamic> _$$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'phone_number_screen': instance.phoneNumberScreenLanguage.toJson(),
    };
