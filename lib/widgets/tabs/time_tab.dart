import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/views/time_card.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,

        children: [
          Image.asset(Assets.timebackg.path, fit: BoxFit.cover),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: Image.asset(Assets.imgHeader.path),
              ),
              Padding(padding: const EdgeInsets.all(12), child: TimeCard()),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Azkar", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),),
                ),
              ),
              Expanded(child: Row(
                spacing: 25,
                children: [

                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 18,top: 8),
                  child: Stack(children:[ SvgPicture.asset(Assets.rectangleazkar)
                                , Positioned(
                                 top: 20,
                                 left: 10,
                                 right: 10, 
                  child: Image.asset(Assets.baloor1.path)) , Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text("Evening Azkar",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor,
                              ),),
                  )]),
                ),Padding(
                  padding: const EdgeInsets.only(bottom: 20,right: 10,top: 8),
                  child: Stack(children:[ SvgPicture.asset(Assets.rectangleazkar)
                                , Positioned(
                                 top: 20,
                                 left: 10,
                                 right: 10, 
                  child: Image.asset(Assets.baloor2.path)) , Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text("Morning Azkar",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor,
                              ),),
                  )]),
                ), 
               
              ],))
            ],
          ),
        ],
      ),
    );
  }
} //                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
