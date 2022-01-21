import 'package:flutter/material.dart';
import 'package:phone_number_screen/dictionary/dictionary_classes/phone_number_screen_language.dart';
import 'package:phone_number_screen/dictionary/main_dictionary.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/custom_list_tile.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/widgets/search_text_field.dart';
import 'package:phone_number_screen/presentation/shared/main_button.dart';
import 'package:phone_number_screen/res/app_colors.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/res/app_fonts.dart';

class CountrySelectWidget extends StatefulWidget {
  final Future<List<Country>> countries;

  const CountrySelectWidget({
    required this.countries,
    Key? key,
  }) : super(key: key);

  @override
  _CountrySelectWidgetState createState() => _CountrySelectWidgetState();
}

class _CountrySelectWidgetState extends State<CountrySelectWidget> {
  late final PhoneNumberScreenLanguage _language = MainDictionary.instance.language.phoneNumberScreenLanguage;
  late final ValueNotifier<String> _valueNotifier;

  @override
  void initState() {
    super.initState();

    _valueNotifier = ValueNotifier(emptyString);
  }

  @override
  void dispose() {
    _valueNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
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
                  onTap: () {},
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
            child: FutureBuilder(
                future: widget.countries,
                builder: (BuildContext _, AsyncSnapshot<List<Country>> snapshot) {
                  if (snapshot.hasData) {
                    return ValueListenableBuilder(
                        valueListenable: _valueNotifier,
                        builder: (BuildContext _, String value, Widget? __) {
                          List<Country> countriesWithFilter = snapshot.data!;

                          if (value.isNotEmpty) {
                            countriesWithFilter =
                                snapshot.data!.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
                          }

                          return ListView.builder(
                            itemCount: countriesWithFilter.length,
                            itemBuilder: (BuildContext _, int index) => CustomListTile(
                              country: countriesWithFilter[index],
                            ),
                          );
                        });
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ),
        ],
      ),
    );
  }

  void _searchTextFieldOnChange(String text) {
    _valueNotifier.value = text;
  }
}
