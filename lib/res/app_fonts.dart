import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_number_screen/res/app_colors.dart';

class AppFonts {
  static final TextStyle titleTextStyle = GoogleFonts.inter(
    fontSize: 32.0,
    height: 1.25,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.white,
  );

  static final TextStyle phoneNumberTextStyle = GoogleFonts.inter(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.purple200,
  );

  static final TextStyle phoneNumberHintTextStyle = GoogleFonts.inter(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.blue200,
  );
}
