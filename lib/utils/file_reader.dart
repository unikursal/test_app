import 'package:flutter/services.dart';

class FileReader {
  static final FileReader _instance = FileReader._();

  static FileReader get instance => _instance;

  FileReader._();

  Future<String> readFileAsStringFromAssets({required String path}) async {
    try {
      return await rootBundle.loadString(path);
    } catch (exception) {
      rethrow;
    }
  }
}
