import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_number_screen/models/country.dart';
import 'package:phone_number_screen/res/app_const.dart';
import 'package:phone_number_screen/res/app_fonts.dart';

class CustomListTile extends StatelessWidget {
  final Country country;

  const CustomListTile({
    required this.country,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          SizedBox(
            height: 20.0,
            width: 38.0,
            child: SvgPicture.network(
              country.flag.urlForSvg,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: 20.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              plus + country.callingCodes.first,
              style: AppFonts.phoneNumberCodeTextStyle,
            ),
          ),
          Expanded(
            child: Text(
              country.name,
              style: AppFonts.countryNameTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
