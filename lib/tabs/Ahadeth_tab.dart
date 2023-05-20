import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Hadeth_Content.dart';
import 'package:islami/hadeth_model.dart';
class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset(
            "assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
        Divider(
          thickness: 2,
          color: Theme
              .of(context)
              .colorScheme
              .onBackground,
        ),

        Text(
          'ahadeth',
          style:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 2,
          color: Theme
              .of(context)
              .colorScheme
              .onBackground,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(
                  thickness: 1,
                  endIndent: 35,
                  indent: 35,
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethContent.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {

    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhadethContent = value.split("#");

      for (int i = 0; i < AhadethContent.length; i++) {
        int lastIndex = AhadethContent[i].trim().indexOf("\n");
        String title = AhadethContent[i].trim().substring(0, lastIndex);
        print(title);
        String content = AhadethContent[i].trim().substring(lastIndex + 1);

        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
    // "   Moh amed    " // >> .trim() : "Moh amed"
    // String fileContent = await rootBundle.loadString(
    //     "assets/files/ahadeth.txt");
    // List<String> allHadethList = fileContent.split('#'); // hadeth // hadeth
    // for (int i = 0; i < allHadethList.length; i++) {
    //   String hadethItem = allHadethList[i];
    //   List<String> hadethLines = hadethItem.split('\n');
    //   String hadethTitle = hadethLines[0];
    //   print(hadethTitle);
    //   hadethLines.removeAt(0);
    //   String hadethContent = hadethLines.join('\n');
    //   HadethModel hadeth = HadethModel(hadethTitle, hadethContent);
    //   allAhadeth.add(hadeth);
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}