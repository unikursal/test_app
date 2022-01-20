// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {@JsonKey(name: 'phone_number_screen')
          required PhoneNumberScreenLanguage phoneNumberScreenLanguage}) {
    return _Language(
      phoneNumberScreenLanguage: phoneNumberScreenLanguage,
    );
  }

  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  @JsonKey(name: 'phone_number_screen')
  PhoneNumberScreenLanguage get phoneNumberScreenLanguage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'phone_number_screen')
          PhoneNumberScreenLanguage phoneNumberScreenLanguage});

  $PhoneNumberScreenLanguageCopyWith<$Res> get phoneNumberScreenLanguage;
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? phoneNumberScreenLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumberScreenLanguage: phoneNumberScreenLanguage == freezed
          ? _value.phoneNumberScreenLanguage
          : phoneNumberScreenLanguage // ignore: cast_nullable_to_non_nullable
              as PhoneNumberScreenLanguage,
    ));
  }

  @override
  $PhoneNumberScreenLanguageCopyWith<$Res> get phoneNumberScreenLanguage {
    return $PhoneNumberScreenLanguageCopyWith<$Res>(
        _value.phoneNumberScreenLanguage, (value) {
      return _then(_value.copyWith(phoneNumberScreenLanguage: value));
    });
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'phone_number_screen')
          PhoneNumberScreenLanguage phoneNumberScreenLanguage});

  @override
  $PhoneNumberScreenLanguageCopyWith<$Res> get phoneNumberScreenLanguage;
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? phoneNumberScreenLanguage = freezed,
  }) {
    return _then(_Language(
      phoneNumberScreenLanguage: phoneNumberScreenLanguage == freezed
          ? _value.phoneNumberScreenLanguage
          : phoneNumberScreenLanguage // ignore: cast_nullable_to_non_nullable
              as PhoneNumberScreenLanguage,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_Language implements _Language {
  const _$_Language(
      {@JsonKey(name: 'phone_number_screen')
          required this.phoneNumberScreenLanguage});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageFromJson(json);

  @override
  @JsonKey(name: 'phone_number_screen')
  final PhoneNumberScreenLanguage phoneNumberScreenLanguage;

  @override
  String toString() {
    return 'Language(phoneNumberScreenLanguage: $phoneNumberScreenLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.phoneNumberScreenLanguage,
                    phoneNumberScreenLanguage) ||
                const DeepCollectionEquality().equals(
                    other.phoneNumberScreenLanguage,
                    phoneNumberScreenLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberScreenLanguage);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  const factory _Language(
          {@JsonKey(name: 'phone_number_screen')
              required PhoneNumberScreenLanguage phoneNumberScreenLanguage}) =
      _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  @JsonKey(name: 'phone_number_screen')
  PhoneNumberScreenLanguage get phoneNumberScreenLanguage =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
