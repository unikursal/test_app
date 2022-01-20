// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Flag _$$_FlagFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Flag',
      json,
      ($checkedConvert) {
        final val = _$_Flag(
          urlForSvg: $checkedConvert('svg', (v) => v as String),
          urlForPng: $checkedConvert('png', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'urlForSvg': 'svg', 'urlForPng': 'png'},
    );

Map<String, dynamic> _$$_FlagToJson(_$_Flag instance) => <String, dynamic>{
      'svg': instance.urlForSvg,
      'png': instance.urlForPng,
    };
