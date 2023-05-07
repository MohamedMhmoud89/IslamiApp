import 'package:flutter/material.dart';
import 'package:islami/ui/home/quran/verse_name.dart';

class QuranTab extends StatelessWidget {
  List<String> names = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/quran_header_logo.png",),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).primaryColor,
        ),
        Text('اسم السورة',
        style: TextStyle(
          color: Color(0xff242424),
          fontSize: 26,
          fontWeight: FontWeight.w500,
          fontFamily: 'ElMessiri'
        ),),
        Container(
          width: double.infinity,
          height: 1,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(child:
            ListView.separated(itemBuilder: (buildContext, index){
              return VerseNameWidget(names[index], index);
            },
            itemCount: names.length,
            separatorBuilder: (buildContext, index){
              return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 24),
              );
    }
    ),
            ),
      ],
    );
  }
}
