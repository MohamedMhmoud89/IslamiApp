import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/hadith_tab.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/radio_tab.dart';
import 'package:islami/ui/home/tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routename = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              selectedTabIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "الراديو"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "التسبيح"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/hadith.png")),
                  label: "الأحاديث"),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "القرآن"),
            ]),
        backgroundColor: Colors.transparent,
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    TasbehTab(),
    HadithTab(),
    QuranTab(),
  ];
}
