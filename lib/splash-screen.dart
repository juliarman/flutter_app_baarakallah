import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_baarakallah/ui/page-home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override initState(){
    super.initState();
    startSplash();
  }

  startSplash() async{
    var duration = const Duration(seconds: 4);
    return Timer (duration, (){

      Navigator.of(context).pushReplacement(

        MaterialPageRoute(builder: (_){
          return PageHome();
        }),

      );

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Container(
        height: 250,
          width: 250,
          child: Image.asset('images/barakallah.png'))),

    );
  }
}
