import 'package:flutter/material.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> ayas = [
    "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
   "وَاسْتَغْفِرِ اللَّهَ",
     "وَكَبِّرْهُ تَكْبِيرًا",
  ];

  List<String> taspeeh = [
    "سبحان الله",
    "استغفر الله",
    "الله أكبر",
  ];

  int currentIndex = 0;

  String text1 = "";
  String text2 = "";

  double turns = 0.0;
  int count = 0;

  @override
  void initState() {
    super.initState();

    text1 = ayas[currentIndex];
    text2 = taspeeh[currentIndex];
  }

  void onTap() {
    setState(() {
      if (count < 33) {
        count++;
      } else {
        count = 0;

        currentIndex++;

        if (currentIndex == ayas.length) {
          currentIndex = 0;
        }

        text1 = ayas[currentIndex];
        text2 = taspeeh[currentIndex];
      }

      turns += 1 / 33;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(Assets.sephaBG.path, fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  AppColors.blackColor.withValues(alpha: 0.75),

                  AppColors.grayColor.withValues(alpha: .95),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 35,
                  bottom: 30,
                ),
                child: Image.asset(Assets.imgHeader.path),
              ),
              Text(
                text1,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110,left: 25,right: 25),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: AnimatedRotation(
                        turns: turns,
                        duration: const Duration(milliseconds: 300),
                        child: Image.asset(Assets.sebhaBody1.path),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 120,
                      child: Text(
                       text2,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 160,
                      child: Text(
                        "$count",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
