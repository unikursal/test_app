import 'package:flutter/services.dart';
import 'package:phone_number_screen/res/app_const.dart';

class PhoneNumberInputFormatter extends TextInputFormatter {
  PhoneNumberInputFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final TextSelection newSelection = newValue.selection;

    if (newValue.text.length > oldValue.text.length) {
      RegExp exp = RegExp(phoneNumberPattern);
      Iterable<Match> matches = exp.allMatches(newValue.text);
      if (matches.first[0] != null && matches.first[0]!.length == 1) {
        return TextEditingValue(
          text: '(${newValue.text}',
          selection: _getNewTextSelectionWithShift(
            textSelection: newSelection,
            shift: 1,
          ),
        );
      }

      if (matches.first[2] != null && matches.first[2]!.length == 1) {
        return TextEditingValue(
          text: '${oldValue.text}) ${newValue.text.substring(oldValue.text.length)}',
          selection: _getNewTextSelectionWithShift(
            textSelection: newSelection,
            shift: 2,
          ),
        );
      }

      if (matches.first[3] != null && matches.first[3]!.length == 1) {
        return TextEditingValue(
          text: '${oldValue.text}-${newValue.text.substring(oldValue.text.length)}',
          selection: _getNewTextSelectionWithShift(
            textSelection: newSelection,
            shift: 1,
          ),
        );
      }
    } else {
      RegExp exp = RegExp(phoneNumberAdditionalCharactersPattern);

      String text = newValue.text;
      int shift = 0;
      while (text.length > 0 && exp.hasMatch(text.substring(text.length - 1))) {
        text = _deleteLastSymbol(str: text);
        shift--;
      }

      return TextEditingValue(text: text, selection: _getNewTextSelectionWithShift(textSelection: newSelection, shift: shift));
    }

    return newValue;
  }

  String _deleteLastSymbol({required String str}) => str.substring(0, str.length - 1);

  TextSelection _getNewTextSelectionWithShift({
    required TextSelection textSelection,
    required int shift,
  }) =>
      textSelection.copyWith(
        extentOffset: textSelection.extentOffset + shift,
        baseOffset: textSelection.baseOffset + shift,
      );
}
