import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    lineLength: 80,
  ),
);

const String emptyString = '';
const String enDictionaryPath = 'assets/dictionary/en.json';
const int phoneNumberLength = 14;
const String phoneNumberHintText = '(123) 123-1234';
const String leftBracket = '(';
const String rightBracket = ')';
const String space = ' ';
const String hyphen = '-';
const String plus = '+';
const String phoneNumberPattern = r'\(?(\d{3})?\)? ?(\d{1,3})?-?(\d*)';
const String phoneNumberAdditionalCharactersPattern = r'\(|\)|\-| ';
const String defaultCountryCode = 'USA';
const double heightOfPartBackgroundPage = 42.0;
