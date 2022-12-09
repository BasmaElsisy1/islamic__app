import 'package:flutter/material.dart';
import 'package:islamic/home/tabs/ahadeth/hadeth_details_screen.dart';
import 'package:islamic/home/tabs/quran/sura_details_screen.dart';
import 'package:islamic/providers/myProvider.dart';
import 'package:islamic/theme_details.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
      theme: ThemeDetails.lightTheme,
      darkTheme: ThemeDetails.darkTheme,
      themeMode: provider.themeMode,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
    );
  }
}
