import 'package:flutter/material.dart';
import 'package:islamic/home/tabs/ahadeth/ahadeth_screen.dart';
import 'package:islamic/home/tabs/quran/quran_screen.dart';
import 'package:islamic/home/tabs/radio/radio_screen.dart';
import 'package:islamic/home/tabs/sebha/Sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.islami, style: Theme.of(context).textTheme.headline1),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: current_index,
            onTap: (index){
              current_index = index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Color.fromRGBO(183, 147, 95, 1.0),
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: AppLocalizations.of(context)!.sebha,
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1.0)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: AppLocalizations.of(context)!.ahadeth,
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1.0)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran,
                  backgroundColor: Color.fromRGBO(183, 147, 95, 1.0)),
            ],
          ),
          body: screen[current_index],
        ),
      ],
    );
  }
  List<Widget> screen = [
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen(),
    QuranScreen()
  ];
}
