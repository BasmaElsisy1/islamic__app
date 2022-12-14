import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/theme_details.dart';
import 'package:provider/provider.dart';
import '../../../providers/myProvider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> versess = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    var provider = Provider.of<MyProvider>(context);
    if (versess.isEmpty) {
      loadFile(args.index);
    }

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.play_arrow,
                        color: provider.themeMode == ThemeMode.light
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "???????? ${args.name} ",
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Divider(
                    color: ThemeDetails.GoldColor,
                    thickness: 1,
                    endIndent: 40,
                    indent: 40,
                  ),
                ),
                versess.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: ListView.builder(
                            itemCount: versess.length,
                            itemBuilder: (c, index) {
                              return Text(
                                '${versess[index]}(${index + 1})',
                                style: TextStyle(
                                    fontSize: 20,
                                    height: 2,
                                    fontWeight: FontWeight.w100,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                textAlign: TextAlign.center,
                              );
                            }),
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content = await rootBundle
        .loadString('assets/files/sura_details/${index + 1}.txt');
    List<String> lines = content.split('\n');
    lines.removeWhere((item) => item.isEmpty);
    versess = lines;
    setState(() {});
  }
}

class SuraDetailsArg {
  String name;
  int index;
  SuraDetailsArg(this.name, this.index);
}
