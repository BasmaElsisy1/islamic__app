import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/providers/myProvider.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

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
          pro.themeMode == ThemeMode.light
              ?  'assets/images/buttons.png'
              :  'assets/images/buttons_dark.png',

        ),

      ],
    );
  }
}
