import 'package:flutter/material.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_fonts.dart';

class ResultDialog extends StatelessWidget {
  final String phoneNumber;

  const ResultDialog({
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 250.0,
        height: 150.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          phoneNumber,
          style: AppFonts.phoneNumberTextStyle,
        ),
      ),
    );
  }
}
