import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
class SplashScreen extends StatelessWidget {
  static const routename = "Splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routename);
    });
    return Scaffold(
      body:
      Container(
          child: Image.asset('assets/images/background_splash.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
          )
      ),
    );
  }
}
