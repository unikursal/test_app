import 'package:flutter/material.dart';
import 'package:phone_number_screen/application/bloc/app_bloc.dart';
import 'package:phone_number_screen/application/bloc/app_event.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/custom_list_tile.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/search_text_field.dart';
import 'package:phone_number_screen/presentation/shared/main_button.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/res/app_durations.dart';
import 'package:phone_number_screen/res/app_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountrySelectWidget extends StatefulWidget {
  final List<Country> countries;
  final AnimationController controller;

  const CountrySelectWidget({
    required this.countries,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  _CountrySelectWidgetState createState() => _CountrySelectWidgetState();
}

class _CountrySelectWidgetState extends State<CountrySelectWidget> with TickerProviderStateMixin {
  late final PhoneNumberScreenLanguage _language = MainDictionary.instance.language.phoneNumberScreenLanguage;
  late final ValueNotifier<String> _valueNotifier;
  late final AnimationController _controller;
  late final Animation slideAnimation;

  @override
  void initState() {
    super.initState();

    _valueNotifier = ValueNotifier(emptyString);
    _controller = AnimationController(
      vsync: this,
      duration: AppDurations.hidePageDuration,
      reverseDuration: AppDurations.hidePageDuration,
    );

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _valueNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      insetPadding: EdgeInsets.zero,
      child: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: SlideTransition(
            position: Tween<Offset>(
              begin: _controller.value == 0.0 ? const Offset(0, -1) : const Offset(0, 1),
              end: Offset.zero,
            ).animate(_controller),
            child: Column(
              children: [
                const SizedBox(height: 60.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24.0),
                        topLeft: Radius.circular(24.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                _language.bottomSheetTitle,
                                style: AppFonts.titleTextStyle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: MainButton(
                                width: 20.0,
                                height: 20.0,
                                color: AppColors.purple10,
                                borderRadius: 6.0,
                                child: Icon(
                                  Icons.close,
                                  color: AppColors.purple200,
                                  size: 14.0,
                                ),
                                onTap: () {
                                  _closeWidget();
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 12.0),
                          child: SearchTextField(
                            onChange: _searchTextFieldOnChange,
                          ),
                        ),
                        Expanded(
                          child: ValueListenableBuilder(
                              valueListenable: _valueNotifier,
                              builder: (BuildContext _, String value, Widget? __) {
                                List<Country> countriesWithFilter = widget.countries;

                                if (value.isNotEmpty) {
                                  countriesWithFilter =
                                      widget.countries.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
                                }

                                return ListView.builder(
                                  itemCount: countriesWithFilter.length,
                                  itemBuilder: (BuildContext _, int index) => InkWell(
                                    onTap: () {
                                      context.read<AppBloc>().add(
                                            SetCallingCodeEvent(code: countriesWithFilter[index].code),
                                          );

                                      _closeWidget();
                                    },
                                    child: CustomListTile(
                                      country: countriesWithFilter[index],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _searchTextFieldOnChange(String text) {
    _valueNotifier.value = text;
  }

  void _closeWidget() {
    widget.controller.reverse();
    _controller.reverse().then((value) => Navigator.pop(context));
  }
}
