import 'package:logger/logger.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    lineLength: 80,
  ),
);

const String enDictionaryPath = 'assets/dictionary/en.json';
const int phoneNumberLength = 10;
const String phoneNumberHintText = '(123) 123-1234';
