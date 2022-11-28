import 'package:flutter/material.dart';
import 'package:islamic/theme_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset('assets/images/quran_upper_image.png')),
        Divider(
          color: ThemeDetails.GoldColor,
          height: 15,
          thickness: 2,
        ),
        Text(AppLocalizations.of(context)!.sura_name),
        Divider(
          color: ThemeDetails.GoldColor,
          height: 15,
          thickness: 2,
        ),
      ],
    );
  }
}
