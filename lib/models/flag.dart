import 'package:freezed_annotation/freezed_annotation.dart';

part 'flag.freezed.dart';
part 'flag.g.dart';

@freezed
class Flag with _$Flag{
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Flag({
    @JsonKey(name: 'svg') required String urlForSvg,
    @JsonKey(name: 'png') required String urlForPng,
}) = _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}