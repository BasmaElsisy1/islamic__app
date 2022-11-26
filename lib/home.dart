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
            backgroundColor: Color.fromRGBO(183, 147, 95, 1.0),
            items: [

              BottomNavigationBarItem(
                icon: Image.asset('assets/images/quran.png', color: Colors.black,),
                label: 'Quran'
              ),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/quran.png', color: Colors.black,),
                  label: 'Quran'
              ),
            ],
          ),
        ),
      ],
    );
  }
}
