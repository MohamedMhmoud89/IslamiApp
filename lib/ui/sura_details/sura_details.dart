import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/sura_details/sura_contant.dart';
class SuraDetailsScreen extends StatefulWidget {
  static const routename = "sura_details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> suraContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if(suraContent.isEmpty)
    ReadFile(args.index);
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
            args.title
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child:
              Card(
                elevation: 50,
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Color(0x90F8F8F8),
                child: ListView.separated(itemBuilder: (buildContext, index){
                  return SuraContant(suraContent[index],);
                }, itemCount: suraContent.length,
                separatorBuilder: (buildContext,index){
                  return Container(
                    color: Theme.of(context).primaryColor,
                    height: 1,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                  );
                },),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ReadFile(int chapterIndex) async{
    String text = await rootBundle.loadString('assets/files/${chapterIndex+1}.txt');
    suraContent = text.split('\n');
    setState(() {
    });
  }
}
class SuraDetailsScreenArgs { //Data Class
  String title;
  int index;
  SuraDetailsScreenArgs(this.index, this.title);
}