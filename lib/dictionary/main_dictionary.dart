import 'dart:convert';

import 'package:phone_number_screen/dictionary/language.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/utils/file_reader.dart';

class MainDictionary {
  static final MainDictionary _instance = MainDictionary._();

  static MainDictionary get instance => _instance;

  late Language language;

  MainDictionary._();

  Future<void> initializeDictionary() async {
    try {
      String json = await FileReader.instance.readFileAsStringFromAssets(path: enDictionaryPath);

      language = Language.fromJson(
        jsonDecode(json),
      );
    } catch (exception) {
      logger.e(exception);
    }
  }
}
