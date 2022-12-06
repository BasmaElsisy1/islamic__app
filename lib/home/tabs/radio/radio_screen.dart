import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/radio_body.png',
        ),
        Container(
          margin: EdgeInsets.only(top: 40 , bottom: 60),
          child: Text(
            AppLocalizations.of(context)!.radio_body,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ),
        Image.asset(
          'assets/images/buttons.png',
        ),

      ],
    );
  }
}
