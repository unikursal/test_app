// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String,
      callingCodes: (json['callingCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      flag: Flag.fromJson(json['flags'] as Map<String, dynamic>),
      code: json['alpha2Code'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'callingCodes': instance.callingCodes,
      'flags': instance.flag,
      'alpha2Code': instance.code,
    };
