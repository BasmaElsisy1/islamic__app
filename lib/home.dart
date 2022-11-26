import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

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
            title: Text('Islami', style: Theme.of(context).textTheme.headline1),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),
                  size: 48,),
                label: 'radio',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/background.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/icon_sebha.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/radio.png'),
                label: '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
