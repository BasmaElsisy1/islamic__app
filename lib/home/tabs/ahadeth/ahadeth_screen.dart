import 'package:flutter/material.dart';
import 'package:islamic/theme_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/services.dart';

import 'hadeth_item.dart';

class AhadethScreen extends StatelessWidget {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset('assets/images/ahadeth_photo.png')),
        Divider(
          color: Theme.of(context).colorScheme.onSecondary,
          height: 15,
          thickness: 2,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: TextStyle(fontSize: 25),
        ),
        Divider(
          color: Theme.of(context).colorScheme.onSecondary,
          height: 15,
          thickness: 2,
        ),
        ahadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.builder(
                  itemCount: ahadeth.length,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 15, top: 15),
                      child: HadethItem(ahadeth[index].title, ahadeth[index]),
                      // child: Text(
                      //   // ahadeth[index].title,
                      //   'الحديث رقم ${index + 1}',
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .headline1
                      //       ?.copyWith(fontSize: 20),
                      //   textAlign: TextAlign.center,
                      // ),
                    );
                  },
                ),
              )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> allAhadeth = content.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      String singleHadeth = allAhadeth[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadethData = Hadeth(title, hadethLines);
      ahadeth.add(hadethData);
    }
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth(this.title, this.content);
}
