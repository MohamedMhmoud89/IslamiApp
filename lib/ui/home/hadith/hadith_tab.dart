import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadith/hadith.dart';
import 'package:islami/ui/home/hadith/hadith_title.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allhadithlist = [];

  @override
  Widget build(BuildContext context) {
    if (allhadithlist.isEmpty) ReadHadithFile();
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset(
        "assets/images/hadith_header_logo.png",
        height: 150,
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: Theme.of(context).primaryColor,
      ),
      const Text(
        'رقم الحديث',
        style: TextStyle(
            color: Color(0xff242424),
            fontSize: 26,
            fontWeight: FontWeight.w500,
            fontFamily: 'ElMessiri'),
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: Theme.of(context).primaryColor,
      ),
      Expanded(
          child: ListView.separated(
              itemBuilder: (buildContext, index) {
                return HadithTitleWidget(allhadithlist[index]);
              },
              itemCount: allhadithlist.length,
              separatorBuilder: (buildContext, index) {
                return Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                );
              }))
    ]);
  }

  void ReadHadithFile() async {
    List<Hadith> hadithlist = [];
    String filecontent =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> splittedcontent = filecontent.split('#');
    for (int i = 0; i < splittedcontent.length; i++) {
      String singlehadithcontent = splittedcontent[i];
      List<String> lines = singlehadithcontent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadith hadith = Hadith(title, content);
      hadithlist.add(hadith);
    }
    allhadithlist = hadithlist;
    setState(() {});
  }
}
