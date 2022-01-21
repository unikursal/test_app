import 'package:flutter/services.dart';
import 'package:phone_number_screen/res/app_const.dart';

class PhoneNumberInputFormatter extends TextInputFormatter {
  PhoneNumberInputFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    print(oldValue.text);
    print(newValue.text);
    final TextSelection newSelection = newValue.selection;

    RegExp exp = RegExp(phoneNumberPattern);
    Iterable<Match> matches = exp.allMatches(newValue.text);
    if (matches.first[0] != null && matches.first[0]!.length == 1) {
      return TextEditingValue(
        text: '(${newValue.text}',
        selection: newSelection.copyWith(
          extentOffset: newSelection.extentOffset + 1,
          baseOffset: newSelection.baseOffset + 1,
        ),
      );
    }

    if (matches.first[2] != null && matches.first[2]!.length == 1) {
      return TextEditingValue(
        text: '${oldValue.text}) ${newValue.text.substring(oldValue.text.length)}',
        selection: newSelection.copyWith(
          extentOffset: newSelection.extentOffset + 2,
          baseOffset: newSelection.baseOffset + 2,
        ),
      );
    }

    if (matches.first[3] != null && matches.first[3]!.length == 1) {
      return TextEditingValue(
        text: '${oldValue.text}-${newValue.text.substring(oldValue.text.length)}',
        selection: newSelection.copyWith(
          extentOffset: newSelection.extentOffset + 1,
          baseOffset: newSelection.baseOffset + 1,
        ),
      );
    }

    return TextEditingValue(text: newValue.text, selection: newValue.selection);
  }
}
