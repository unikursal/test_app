import 'package:flutter/services.dart';

class PhoneNumberInputFormatter extends TextInputFormatter{
  PhoneNumberInputFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(text: newValue.text, selection: newValue.selection);
  }
  
  
}