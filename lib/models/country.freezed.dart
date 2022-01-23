// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'callingCodes') required List<String> callingCodes,
      @JsonKey(name: 'flags') required Flag flag,
      @JsonKey(name: 'alpha2Code') required String code}) {
    return _Country(
      name: name,
      callingCodes: callingCodes,
      flag: flag,
      code: code,
    );
  }

  Country fromJson(Map<String, Object> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'callingCodes')
  List<String> get callingCodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'flags')
  Flag get flag => throw _privateConstructorUsedError;
  @JsonKey(name: 'alpha2Code')
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'callingCodes') List<String> callingCodes,
      @JsonKey(name: 'flags') Flag flag,
      @JsonKey(name: 'alpha2Code') String code});

  $FlagCopyWith<$Res> get flag;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? callingCodes = freezed,
    Object? flag = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      callingCodes: callingCodes == freezed
          ? _value.callingCodes
          : callingCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FlagCopyWith<$Res> get flag {
    return $FlagCopyWith<$Res>(_value.flag, (value) {
      return _then(_value.copyWith(flag: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'callingCodes') List<String> callingCodes,
      @JsonKey(name: 'flags') Flag flag,
      @JsonKey(name: 'alpha2Code') String code});

  @override
  $FlagCopyWith<$Res> get flag;
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? callingCodes = freezed,
    Object? flag = freezed,
    Object? code = freezed,
  }) {
    return _then(_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      callingCodes: callingCodes == freezed
          ? _value.callingCodes
          : callingCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  const _$_Country(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'callingCodes') required this.callingCodes,
      @JsonKey(name: 'flags') required this.flag,
      @JsonKey(name: 'alpha2Code') required this.code});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'callingCodes')
  final List<String> callingCodes;
  @override
  @JsonKey(name: 'flags')
  final Flag flag;
  @override
  @JsonKey(name: 'alpha2Code')
  final String code;

  @override
  String toString() {
    return 'Country(name: $name, callingCodes: $callingCodes, flag: $flag, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.callingCodes, callingCodes) ||
                const DeepCollectionEquality()
                    .equals(other.callingCodes, callingCodes)) &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(callingCodes) ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'callingCodes') required List<String> callingCodes,
      @JsonKey(name: 'flags') required Flag flag,
      @JsonKey(name: 'alpha2Code') required String code}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'callingCodes')
  List<String> get callingCodes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'flags')
  Flag get flag => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'alpha2Code')
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
