import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';

class Radiocard extends StatefulWidget {
  const Radiocard({super.key});

  @override
  State<Radiocard> createState() => _RadiocardState();
}

class _RadiocardState extends State<Radiocard> {
  
   bool isclicked = true;
  Widget iconpath = SvgPicture.asset(Assets.polygon2);
  Widget iconpath2 = SvgPicture.asset(Assets.volumeHigh);

  void Function()? onPressed() {
    if (isclicked) {
       
      iconpath = SvgPicture.asset(Assets.pause);
      iconpath2 = SvgPicture.asset(Assets.volumeCross);
    } else {
      
      iconpath = SvgPicture.asset(Assets.polygon2);

      iconpath2 = SvgPicture.asset(Assets.volumeHigh);
    }

    setState(() {
      isclicked = !isclicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 390,
      decoration: BoxDecoration(
        color: AppColors.goldColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 10,
            left: 80,
            child: Row(
              children: [
                Center(
                  child: Text(
                    "Radio Ibrahim Al-Akdar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 35,
            bottom: 0,
            child: 
            isclicked? Image.asset(
             Assets.mosque.path,
              color: AppColors.grayColor.withValues(alpha: .3),
            ):   Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: Image.asset(
              Assets.soundWave11.path,
                color: AppColors.grayColor.withValues(alpha: .3)
                
              ),
            )
          ),
          Positioned(
            top: 75,
            left: 170,
            child: Row(
              children: [
                IconButton(onPressed: onPressed, icon: iconpath),
                IconButton(onPressed: () {}, icon: iconpath2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
