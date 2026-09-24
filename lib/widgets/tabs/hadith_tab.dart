import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

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
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: 20,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                     
                      decoration: BoxDecoration( color: AppColors.goldColor,
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row( 
                            children: [
                              Transform.flip(flipX: true,
                                child: Image.asset(Assets.corner1.path,width: 100,height: 100,)),
                                SizedBox(width: 110,
                                  child: Center(child: Text("text1",style: TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w700,)))),
                               Image.asset(Assets.corner1.path,width: 100,height: 100),
                            ],
                          ),
                        ),Expanded(child: SingleChildScrollView(
                          scrollDirection:Axis.vertical ,
                          child: Text( "text2",style: TextStyle(color: AppColors.blackColor,fontSize: 16,fontWeight: FontWeight.w700,)),)),
                        Image.asset(Assets.mosque.path)
                      ],),
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
}
