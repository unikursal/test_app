import 'package:flutter/material.dart';

class CountryUtil{
  static String? getCurrentCountryCode() => WidgetsBinding.instance?.window.locale.countryCode;
}