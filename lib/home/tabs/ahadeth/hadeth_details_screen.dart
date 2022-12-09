import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/home/tabs/ahadeth/ahadeth_screen.dart';
import 'package:islamic/theme_details.dart';
import 'package:provider/provider.dart';
import '../../../providers/myProvider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'Hadeth_details_screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.islami,
                style: Theme.of(context).textTheme.headline1),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
                color: provider.themeMode == ThemeMode.light
                    ? Color.fromRGBO(248, 248, 248, 0.803921568627451)
                    : Color.fromRGBO(20, 26, 46, 1.0),
                borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.only(left: 29, right: 29, bottom: 100, top: 20),
            child: Column(
              children: [
                Text(
                  args.title,
                  style: Theme.of(context).textTheme.headline1?.copyWith(color: Theme.of(context).colorScheme.primary),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: ThemeDetails.GoldColor,
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: args.content.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Text(
                          args.content[index],
                          style: TextStyle(
                              fontSize: 20,
                              height: 2,
                              fontWeight: FontWeight.w100, color: Theme.of(context).colorScheme.primary),
                          textAlign: TextAlign.center,
                        ),
                      ]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
