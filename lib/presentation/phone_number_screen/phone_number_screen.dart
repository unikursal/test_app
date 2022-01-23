import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_number_screen/application/bloc/app_bloc.dart';
import 'package:phone_number_screen/application/bloc/app_state.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/country_select_widget.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/phone_field_widget.dart';
import 'package:phone_number_screen/presentation/shared/main_button.dart';
import 'package:phone_number_screen/presentation/shared/result_dialog.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/res/app_durations.dart';
import 'package:phone_number_screen/res/app_fonts.dart';
import 'package:phone_number_screen/res/app_gradients.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> with TickerProviderStateMixin {
  late final PhoneNumberScreenLanguage _language;
  late final ValueNotifier<bool> _valueNotifier;
  late final AnimationController _controller;

  late final Animation<double> _animation;

  String? _phoneNumber;

  @override
  void initState() {
    super.initState();

    _language = MainDictionary.instance.language.phoneNumberScreenLanguage;

    _valueNotifier = ValueNotifier(false);

    _controller = AnimationController(
      duration: AppDurations.hidePageDuration,
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 0.8,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext _, Widget? child) {
          return Transform.scale(
            scale: _animation.value,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_animation.value == 1.0 ? 0.0 : 12.0),
              child: child,
            ),
          );
        },
        child: Scaffold(
          body: BlocBuilder<AppBloc, AppState>(builder: (BuildContext _, AppState state) {
            if (state.countries.isEmpty) {
              return Container(
                decoration: BoxDecoration(
                  gradient: AppGradients.phoneNumberScreenBackgroundGradient,
                ),
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            }

            Country country = state.countries.where((element) => element.code == state.countyCode).first;

            return GestureDetector(
              onTap: () {
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
                              onTap: () {
                                _controller.forward();

                                showDialog(
                                  context: context,
                                  builder: (BuildContext _) => CountrySelectWidget(
                                    countries: state.countries,
                                    controller: _controller,
                                  ),
                                );
                              },
                              width: 71.0,
                              height: 48.0,
                              color: AppColors.purple10,
                              child: Row(
                                children: [
                                  Container(
                                    height: 20.0,
                                    width: 38.0,
                                    padding: const EdgeInsets.all(2.0),
                                    child: SvgPicture.network(
                                      country.flag.urlForSvg,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(width: 5.0),
                                  Expanded(
                                    child: Text(
                                      plus + country.callingCodes.first,
                                      style: AppFonts.phoneNumberCodeTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Expanded(
                              child: PhoneFieldWidget(
                                onChange: _phoneTextFieldOnChange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          floatingActionButton: ValueListenableBuilder(
            valueListenable: _valueNotifier,
            builder: (BuildContext valueListenableBuilderContext, bool value, Widget? __) {
              return MainButton(
                onTap: () {
                  showDialog(
                    context: valueListenableBuilderContext,
                    barrierDismissible: true,
                    builder: (BuildContext _) => ResultDialog(
                      phoneNumber: _phoneNumber!,
                    ),
                  );
                },
                width: 48.0,
                height: 48.0,
                child: Icon(
                  Icons.arrow_forward,
                  color: value ? AppColors.purple200 : AppColors.blue200,
                ),
                color: value ? AppColors.white : AppColors.purple10,
              );
            },
          ),
        ),
      ),
    );
  }

  void _phoneTextFieldOnChange(String text) {
    _phoneNumber = text;
    if (text.length == phoneNumberLength) {
      _valueNotifier.value = true;
    } else {
      if (_valueNotifier.value == true) _valueNotifier.value = false;
    }
  }
}
