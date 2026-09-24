import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/models/hadeat_model.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  void initState() {
    super.initState();
    getHadeath();
  }

  List<HadeatModel>ahadeeth=[];
  bool  isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(top: 0, child: Image.asset(Assets.hadithBG.path)),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  AppColors.blackColor.withValues(alpha: 0.78),

                  AppColors.grayColor.withValues(alpha: .94),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 35),
                child: Image.asset(Assets.imgHeader.path),
              ),
              if(isLoading)
              CircularProgressIndicator()
            else
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: ahadeeth.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.goldColor,
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Transform.flip(
                                  flipX: true,
                                  child: Image.asset(
                                    Assets.corner1.path,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                SizedBox(
                                  width: 110,
                                  child: Center(
                                    child: Text(
                                      textDirection: TextDirection.rtl,
                                      ahadeeth[index].name,
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  Assets.corner1.path,
                                  width: 100,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                ahadeeth[index].content,
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(Assets.mosque.path),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: .71,
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
}}
