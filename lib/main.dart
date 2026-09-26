import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/intro_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_detailes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.appRoute: (context) => HomeScreen(),

        IntroScreen.appRoute: (context) => IntroScreen(),

        SuraDetailesScreen.appRoute: (context) => SuraDetailesScreen(),

        SplashScreen.appRoute: (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.appRoute,
    );
  }
}
