import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadith/hadith.dart';
import 'package:islami/ui/sura_details/sura_details.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;
  HadithTitleWidget(this.hadith);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        hadith.title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'main',
          color: Color(0xff242424),
        ),
      ),
    );
  }
}
