// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

/// @nodoc
class _$FlagTearOff {
  const _$FlagTearOff();

  _Flag call(
      {@JsonKey(name: 'svg') required String urlForSvg,
      @JsonKey(name: 'png') required String urlForPng}) {
    return _Flag(
      urlForSvg: urlForSvg,
      urlForPng: urlForPng,
    );
  }

  Flag fromJson(Map<String, Object> json) {
    return Flag.fromJson(json);
  }
}

/// @nodoc
const $Flag = _$FlagTearOff();

/// @nodoc
mixin _$Flag {
  @JsonKey(name: 'svg')
  String get urlForSvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'png')
  String get urlForPng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagCopyWith<Flag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'svg') String urlForSvg,
      @JsonKey(name: 'png') String urlForPng});
}

/// @nodoc
class _$FlagCopyWithImpl<$Res> implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  final Flag _value;
  // ignore: unused_field
  final $Res Function(Flag) _then;

  @override
  $Res call({
    Object? urlForSvg = freezed,
    Object? urlForPng = freezed,
  }) {
    return _then(_value.copyWith(
      urlForSvg: urlForSvg == freezed
          ? _value.urlForSvg
          : urlForSvg // ignore: cast_nullable_to_non_nullable
              as String,
      urlForPng: urlForPng == freezed
          ? _value.urlForPng
          : urlForPng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FlagCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$FlagCopyWith(_Flag value, $Res Function(_Flag) then) =
      __$FlagCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'svg') String urlForSvg,
      @JsonKey(name: 'png') String urlForPng});
}

/// @nodoc
class __$FlagCopyWithImpl<$Res> extends _$FlagCopyWithImpl<$Res>
    implements _$FlagCopyWith<$Res> {
  __$FlagCopyWithImpl(_Flag _value, $Res Function(_Flag) _then)
      : super(_value, (v) => _then(v as _Flag));

  @override
  _Flag get _value => super._value as _Flag;

  @override
  $Res call({
    Object? urlForSvg = freezed,
    Object? urlForPng = freezed,
  }) {
    return _then(_Flag(
      urlForSvg: urlForSvg == freezed
          ? _value.urlForSvg
          : urlForSvg // ignore: cast_nullable_to_non_nullable
              as String,
      urlForPng: urlForPng == freezed
          ? _value.urlForPng
          : urlForPng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_Flag implements _Flag {
  const _$_Flag(
      {@JsonKey(name: 'svg') required this.urlForSvg,
      @JsonKey(name: 'png') required this.urlForPng});

  factory _$_Flag.fromJson(Map<String, dynamic> json) => _$$_FlagFromJson(json);

  @override
  @JsonKey(name: 'svg')
  final String urlForSvg;
  @override
  @JsonKey(name: 'png')
  final String urlForPng;

  @override
  String toString() {
    return 'Flag(urlForSvg: $urlForSvg, urlForPng: $urlForPng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Flag &&
            (identical(other.urlForSvg, urlForSvg) ||
                const DeepCollectionEquality()
                    .equals(other.urlForSvg, urlForSvg)) &&
            (identical(other.urlForPng, urlForPng) ||
                const DeepCollectionEquality()
                    .equals(other.urlForPng, urlForPng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(urlForSvg) ^
      const DeepCollectionEquality().hash(urlForPng);

  @JsonKey(ignore: true)
  @override
  _$FlagCopyWith<_Flag> get copyWith =>
      __$FlagCopyWithImpl<_Flag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagToJson(this);
  }
}

abstract class _Flag implements Flag {
  const factory _Flag(
      {@JsonKey(name: 'svg') required String urlForSvg,
      @JsonKey(name: 'png') required String urlForPng}) = _$_Flag;

  factory _Flag.fromJson(Map<String, dynamic> json) = _$_Flag.fromJson;

  @override
  @JsonKey(name: 'svg')
  String get urlForSvg => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'png')
  String get urlForPng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FlagCopyWith<_Flag> get copyWith => throw _privateConstructorUsedError;
}
