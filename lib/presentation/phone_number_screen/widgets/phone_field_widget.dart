import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/res/app_fonts.dart';
import 'package:phone_number_screen/utils/input_formatter/phone_number_input_formatter.dart';

class PhoneFieldWidget extends StatefulWidget {
  const PhoneFieldWidget({Key? key}) : super(key: key);

  @override
  _PhoneFieldWidgetState createState() => _PhoneFieldWidgetState();
}

class _PhoneFieldWidgetState extends State<PhoneFieldWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: AppColors.purple10,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextFormField(
        cursorColor: AppColors.purple200,
        style: AppFonts.phoneNumberTextStyle,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 12.0,
          ),
          suffix: Align(
            heightFactor: 1.0,
            alignment: Alignment.centerLeft,
            child: Text(
              phoneNumberHintText,
              style: AppFonts.phoneNumberHintTextStyle,
            ),
          ),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(phoneNumberLength),
          PhoneNumberInputFormatter(),
        ],
      ),
    );
  }
}
