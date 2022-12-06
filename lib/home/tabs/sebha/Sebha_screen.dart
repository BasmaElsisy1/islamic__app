import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/theme_details.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count = 0;
  String content = 'سبحان الله';
  void onClick() {
    setState(() {
      count++;
    });
  }

  void ChangeContent() {
    for (int i = 0; i < 34; i++) {
      if (count == 33) {
        setState(() {
          content = "لا اله الا الله";
          count = 0;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/sebha_body.png',
          ),
          Text(
            AppLocalizations.of(context)!.sebha_body,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          Column(mainAxisSize: MainAxisSize.min, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(183, 147, 95, 1.0),
              ),
              onPressed: () => [onClick(), ChangeContent()],
              child: Text(
                count.toString(),
                style: TextStyle(
                    color: ThemeDetails.blackColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.only(top: 20, bottom: 120),
                decoration: BoxDecoration(
                    color: ThemeDetails.GoldColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  content,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ]),
        ],
      ),
    );
  }
}
