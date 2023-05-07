import 'package:flutter/material.dart';

class HadithTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/hadith_header_logo.png",),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).primaryColor,
        ),
        const Text('رقم الحديث',
          style: TextStyle(
              color: Color(0xff242424),
              fontSize: 26,
              fontWeight: FontWeight.w500,
              fontFamily: 'ElMessiri'
          ),),
        ]
    );
  }
}
