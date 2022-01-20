import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/presentation/shared/main_button.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_fonts.dart';
import 'package:phone_number_screen/res/app_gradients.dart';
import 'package:phone_number_screen/services/country_service/country_service.dart';
import 'package:phone_number_screen/services/custom_locator.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  late final PhoneNumberScreenLanguage _language;

  @override
  void initState() {
    super.initState();

    _language = MainDictionary.instance.language.phoneNumberScreenLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.phoneNumberScreenBackgroundGradient,
          ),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 80.0, 11.0, 160.0),
                  child: Text(
                    _language.title,
                    style: AppFonts.titleTextStyle,
                  ),
                ),
                MainButton(
                  onTap: () {
                    getIt<CountryService>().getCountries().then((value) => print(value));
                  },
                  width: 48.0,
                  height: 48.0,
                  //AppColors.purple200
                  child: Icon(
                    Icons.arrow_forward,
                    color: AppColors.blue200,
                  ),
                  color: AppColors.purple10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
