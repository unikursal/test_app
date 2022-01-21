import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/phone_field_widget.dart';
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
  late final Future<List<Country>> countries;

  @override
  void initState() {
    super.initState();

    _language = MainDictionary.instance.language.phoneNumberScreenLanguage;

    countries = getIt<CountryService>().getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: AppGradients.phoneNumberScreenBackgroundGradient,
            ),
            child: SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 80.0, 11.0, 160.0),
                    child: Text(
                      _language.title,
                      style: AppFonts.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        MainButton(
                          onTap: () {},
                          width: 71.0,
                          height: 48.0,
                          //AppColors.purple200
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.blue200,
                          ),
                          color: AppColors.purple10,
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: PhoneFieldWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
