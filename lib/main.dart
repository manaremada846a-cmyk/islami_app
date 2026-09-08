import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith_screen.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/intro_screen.dart';
import 'package:islami_app/screens/radio_screen.dart';
import 'package:islami_app/screens/sebha_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_detailes_screen.dart';
import 'package:islami_app/screens/time_screen.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget{
 const  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  debugShowCheckedModeBanner: false,
  routes:{
    HomeScreen.appRoute:(context) => HomeScreen(),
    HadithScreen.appRoute:(context) => HadithScreen(),
    IntroScreen.appRoute:(context) => IntroScreen(),
     RadioScreen.appRoute:(context) => RadioScreen(),
     SebhaScreen.appRoute:(context) => SebhaScreen(),
     SuraDetailesScreen.appRoute:(context) => SuraDetailesScreen(),
     TimeScreen.appRoute:(context) => TimeScreen(),
     SplashScreen.appRoute:(context) => SplashScreen()
  } ,initialRoute: IntroScreen.appRoute,
 );
  }

 }