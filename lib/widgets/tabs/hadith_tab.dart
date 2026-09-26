import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/models/hadeat_model.dart';
import 'package:islami_app/views/hadith_card.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  bool isLoading = true;

  List<HadeatModel> ahadeeth = [];

  @override
  void initState() {
    super.initState();
    getHadeath();
  }

  Future<void> getHadeath() async {
    for (int i = 1; i <= 50; i++) {
      String data =
          await rootBundle.loadString("assets/hadeeth/h$i (1).txt");

      data = data.trim();

      List<String> hadeath = data.split("\n");

      ahadeeth.add(
        HadeatModel(
          content: hadeath.sublist(1).join("\n"),
          name: hadeath[0],
        ),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(Assets.hadithBG.path),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  AppColors.blackColor.withValues(alpha: 0.78),
                  AppColors.grayColor.withValues(alpha: 0.94),
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
                ),
                child: Image.asset(Assets.imgHeader.path),
              ),

              if (isLoading)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                Expanded(
                  child: CarouselSlider.builder(
                    itemCount: ahadeeth.length,

                    itemBuilder: (context, index, realIndex) {
                      return HadithCard(
                        hadith: ahadeeth[index],
                      );
                    },

                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 0.71,
                      enlargeCenterPage: true,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}