import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';

class TimeCard extends StatefulWidget {
  const TimeCard({super.key});

  @override
  State<TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  List<String> prayerNames = [
  "Fajr",
  "Dhuhr",
  "Asr",
  "Maghrib",
  "Isha",
];List<String> prayerTimes = [
  "05:00",
  "12:00",
  "03:30",
  "06:00",
  "07:30",
];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 301,
      decoration: BoxDecoration(
        color: AppColors.brown,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.groubtime.path,
          ),

          // Date - Pray Time - Hijri Date
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              spacing: 80,
              children: [
                Text(
                  """16 Jul,
2024""",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
                Column(
                  spacing: 5,
                  children: [
                    Text(
                      "Pray Time",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                      ),
                    ),
                    Text(
                      "Tuesday",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  """09 Muh,
1446""",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),

          // Prayer times Carousel
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.blackColor,
                        AppColors.brown,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          prayerNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Text(
                        prayerTimes[index],
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Text(index==0?"AM":
                        "PM",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            options: CarouselOptions(
  height: 140,
  viewportFraction: 0.25,
  enlargeCenterPage: true,
  enlargeFactor: 0.17,
  enlargeStrategy: CenterPageEnlargeStrategy.scale,
  autoPlay: true,
  pageSnapping: true,
),
          ),),

          // Next Pray
          Positioned(
            bottom: 10,
            left: 120,
            child: Row(
              spacing: 70,
              children: [
                Text(
                  "Next Pray - 02:32",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.volumeSlash,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}