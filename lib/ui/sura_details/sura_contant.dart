import 'package:flutter/material.dart';
class SuraContant extends StatelessWidget{
  String content;
  SuraContant(this.content);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0,horizontal: 6),
      alignment: Alignment.center,
      child: Text(content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          //fontWeight: FontWeight.bold,
          fontFamily: "Al-Qalam",
          color: Color(0xff242424),
        ),
      ),
    );
  }
}