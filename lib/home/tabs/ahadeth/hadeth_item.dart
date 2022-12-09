import 'package:flutter/material.dart';
import 'package:islamic/home/tabs/ahadeth/hadeth_details_screen.dart';

import 'ahadeth_screen.dart';

class HadethItem extends StatelessWidget {
  String name;
  Hadeth hadeth;
  HadethItem(this.name , this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, HadethDetails.routeName,arguments: hadeth );
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
