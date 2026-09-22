import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(Assets.tajMahalAgraIndia1.path, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                  colors: [ AppColors.blackColor.withValues(alpha: 0.85),
                    
                    AppColors.grayColor.withValues(alpha: .94),
                   
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 29),
                  child: Image.asset(Assets.imgHeader.path),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: AppColors.whiteColor),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Assets.quranSvgrepoCom1),
                      ),
                      hint: Text(
                        "Sura Name",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: AppColors.goldColor),
                      ),
                      filled: true,
                      fillColor: AppColors.grayColor.withValues(alpha: .7),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: AppColors.goldColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Row(
                    children: [
                      Text(
                        "Most Recently ",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 310,
                          height: 150,
                          child: Card(
                            color: AppColors.goldColor,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                    left: 10,
                                  ),
                                  child: Column(
                                    spacing: 8,
                                    children: [
                                      Text(
                                        "Sura Name",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Sura Name 2",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Sura Name 3",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Image.asset(Assets.quranCard.path),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Suras List",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return ListTile(contentPadding: EdgeInsets.only(left: 20,right: 20),
                        leading:Stack(
                          alignment:Alignment.center ,
                          children: [ SvgPicture.asset(Assets.imgSurNumberFrame),
                          Text((index+1).toString(), style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),)]),
                        title: Text(
                          "data",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        subtitle: Text(
                          "data",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        trailing: Text(
                          "data",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(color: AppColors.whiteColor,endIndent: 50,indent: 50,height: 0.5,);
                    },
                    itemCount: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
