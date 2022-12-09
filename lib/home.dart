import 'package:flutter/material.dart';
import 'package:islamic/home/tabs/ahadeth/ahadeth_screen.dart';
import 'package:islamic/home/tabs/quran/quran_screen.dart';
import 'package:islamic/home/tabs/radio/radio_screen.dart';
import 'package:islamic/home/tabs/sebha/Sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/home/tabs/settings/settings.dart';
import 'package:provider/provider.dart';
import '../../../providers/myProvider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: current_index,
            onTap: (index) {
              current_index = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                  size: 40,
                ),
                label: AppLocalizations.of(context)!.quran,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),
                    size: 40),
                label: AppLocalizations.of(context)!.ahadeth,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/sebha.png'), size: 40),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/radio.png'), size: 40),
                label: AppLocalizations.of(context)!.radio,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
          body: screen[current_index],
        ),
      ],
    );
  }

  List<Widget> screen = [
    QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    Settings(),
  ];
}
