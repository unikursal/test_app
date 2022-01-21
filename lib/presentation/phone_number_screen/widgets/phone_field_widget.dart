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
  late final ValueNotifier<String> _hintNotifier;
  String _oldHintText = phoneNumberHintText;

  @override
  void initState() {
    super.initState();

    _hintNotifier = ValueNotifier(phoneNumberHintText);
    _controller = TextEditingController();

    _controller.addListener(() {
      if (_controller.text != _oldHintText) {
        _oldHintText = _controller.text;

        _hintNotifier.value = phoneNumberHintText.substring(_controller.text.length);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _hintNotifier.dispose();

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
      child: ValueListenableBuilder(
        valueListenable: _hintNotifier,
        builder: (BuildContext _, String hintText, Widget? __) {
          return LayoutBuilder(
            builder: (BuildContext _, BoxConstraints constraints) {
              TextPainter painter = TextPainter(
                text: TextSpan(
                  text: phoneNumberHintText.substring(0, _controller.text.length),
                  style: AppFonts.phoneNumberTextStyle,
                ),
                textDirection: TextDirection.ltr,
              )..layout();

              double padding = painter.width;
              return TextFormField(
                cursorColor: AppColors.purple200,
                style: AppFonts.phoneNumberTextStyle,
                keyboardType: TextInputType.number,
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 12.0,
                  ),
                  // suffixIcon: Container(
                  //   alignment: Alignment.centerLeft,
                  //   margin: EdgeInsets.only(left: 12.0 + padding),
                  //   child: Text(
                  //     hintText,
                  //     style: AppFonts.phoneNumberHintTextStyle,
                  //   ),
                  // ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(phoneNumberLength),
                  PhoneNumberInputFormatter(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
