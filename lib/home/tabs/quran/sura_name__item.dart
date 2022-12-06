import 'package:flutter/material.dart';
import 'package:islamic/home/tabs/quran/sura_details_screen.dart';

class SuraNameItem extends StatelessWidget {
  String name;
  int index;
  SuraNameItem(this.name , this.index);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName , arguments:SuraDetailsArg(name, index) );
      },
        child: Text(
      name,
      style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
      textAlign: TextAlign.center,
    ));
  }
}
