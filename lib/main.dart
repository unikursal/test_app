import 'package:flutter/material.dart';
import 'package:phone_number_screen/application/application.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/services/custom_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainDictionary.instance.initializeDictionary();

  register();

  runApp(
    Application(),
  );
}
