import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/theme_details.dart';
import 'package:islamic/providers/myProvider.dart';
import 'package:provider/provider.dart';

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
      if (count == 34) {
        setState(() {
          content = "لا اله الا الله";
          count = 0;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              disabledBackgroundColor: Colors.transparent,
              disabledForegroundColor: Colors.transparent
            ),
            onPressed: () => [onClick(), ChangeContent()],
            child: Image.asset(
              pro.themeMode == ThemeMode.light
                  ? 'assets/images/sebha_body.png'
                  : 'assets/images/sebha_body_dark.png',
            ),
          ),
          Text(
            AppLocalizations.of(context)!.sebha_body,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              height: 80,
              width: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: pro.themeMode == ThemeMode.light
                      ? Color.fromRGBO(183, 147, 95, 0.5803921568627451)
                      : Color.fromRGBO(20, 26, 46, 0.8),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                count.toString(),
                style: TextStyle(
                    color: pro.themeMode == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.only(top: 20, bottom: 120),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  content,
                  style: TextStyle(
                      color:  pro.themeMode == ThemeMode.light
                          ? Colors.white
                          : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ]),
        ],
      ),
    );
  }
}
