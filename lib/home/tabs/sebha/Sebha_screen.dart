import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/sebha_body.png',
        ),
        Text(
          AppLocalizations.of(context)!.sebha_body,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),

      ],
    );
  }
}
