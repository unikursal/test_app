// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Country',
      json,
      ($checkedConvert) {
        final val = _$_Country(
          name: $checkedConvert('name', (v) => v as String),
          callingCodes: $checkedConvert('callingCodes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          flag: $checkedConvert(
              'flags', (v) => Flag.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'flag': 'flags'},
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'callingCodes': instance.callingCodes,
      'flags': instance.flag.toJson(),
    };
