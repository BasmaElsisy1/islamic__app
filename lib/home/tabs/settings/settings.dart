import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/home/tabs/settings/Language_sheet.dart';
import 'package:islamic/home/tabs/settings/theme_options.dart';
import 'package:provider/provider.dart';
import '../../../providers/myProvider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.onSecondary),
                borderRadius: BorderRadius.circular(12)),
            child: InkWell(
                onTap: () {
                  return showLanguageSheet(context);
                },
                child: Text(pro.language == "ar"
                    ? AppLocalizations.of(context)!.arabic
                    : AppLocalizations.of(context)!.english)),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            AppLocalizations.of(context)!.theme_mode,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.onSecondary),
                borderRadius: BorderRadius.circular(12)),
            child: InkWell(
                onTap: () {
                  return showThemeOptions(context);
                },
                child: Text(pro.themeMode == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark)),
          ),
        ],
      ),
    );
  }

  void showLanguageSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return Language_sheet();
        });
  }

  void showThemeOptions(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return ThemeOptions();
        });
  }
}
