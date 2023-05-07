import 'package:flutter/material.dart';
import 'package:islami/ui/sura_details/sura_details.dart';
class VerseNameWidget extends StatelessWidget{
  String title;
  int index;
  VerseNameWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,
          SuraDetailsScreen.routename,
          arguments: SuraDetailsScreenArgs(index, title)
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(title,
        style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        fontFamily: 'main',
        color: Color(0xff242424),
        ),
        ),
      ),
    );
  }
}