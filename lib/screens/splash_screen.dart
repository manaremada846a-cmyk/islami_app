import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
static String appRoute="splashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     Timer(
  const Duration(seconds: 3),
  () {
    Navigator.pushReplacementNamed(
      context,
      HomeScreen.appRoute,
    );
  },
);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset(Assets.splashBG.path,fit: BoxFit.cover,),
        Positioned(left: 0,top:220,
          child: Image.asset(Assets.shape071.path)),
Positioned(right: 0,bottom:120,
          child: Image.asset(Assets.shape0411.path)),
          Positioned(right: 60,top:50,
          child: Image.asset(Assets.mosque011.path)),
           Positioned(right: 70,bottom:30,
          child: Image.asset(Assets.routeLogo.path)),
 Positioned(right: 120,bottom:330,
          child: Image.asset(Assets.islamiLogo.path)),
          Positioned(right: 5,top: 0,
          child: Image.asset(Assets.glow1.path)),

        ],),
       );
  }
}