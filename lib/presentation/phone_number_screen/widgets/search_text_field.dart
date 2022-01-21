import 'package:flutter/material.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_fonts.dart';

class SearchTextField extends StatefulWidget {
  final Function(String) onChange;

  const SearchTextField({
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late final PhoneNumberScreenLanguage _language = MainDictionary.instance.language.phoneNumberScreenLanguage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: AppColors.purple10,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextFormField(
        onChanged: widget.onChange,
        style: AppFonts.phoneNumberTextStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.purple200,
          ),
          prefixIconConstraints: BoxConstraints(
            maxWidth: 44.0,
            minWidth: 44.0,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: AppFonts.phoneNumberTextStyle,
          hintStyle: AppFonts.phoneNumberHintTextStyle,
          hintText: _language.searchCountryTextFieldHint,
          labelText: _language.searchCountryTextFieldHint,
        ),
      ),
    );
  }
}
