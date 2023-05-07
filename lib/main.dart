import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/sura_details/sura_details.dart';
void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routename,
      routes: {
        HomeScreen.routename : (BuildContext)=>HomeScreen(),
        SplashScreen.routename : (BuildContext)=>SplashScreen(),
        SuraDetailsScreen.routename : (BuildContext)=>SuraDetailsScreen(),
      },
      theme: ThemeData(primaryColor: Color(0xffB7935F),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily:"ElMessiri",
          ),
          iconTheme: IconThemeData(
            color:  Color(0xff242424),
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(
            size: 25,
          ),
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Color(0xff242424),
          unselectedItemColor: Color(0xffF8F8F8),
        ),
      ),
    );
  }
}