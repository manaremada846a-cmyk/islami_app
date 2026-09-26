import 'package:flutter/material.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/models/hadeat_model.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({
    super.key,
    required this.hadith,
  });

  final HadeatModel hadith;

  @override
  Widget build(BuildContext context) {
    return   Stack(fit: StackFit.expand,
      children:[ 
       
            Container(
              decoration: BoxDecoration(
                 color: AppColors.goldColor
                ),
              ),
              
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
      
              child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // الصورة الشمال
        Transform.flip(
          flipX: true,
          child: Image.asset(
            Assets.corner1.path,
            width: 90,
            height: 100,
          ),
        ),
      
        Expanded(
          child: Center(
            child: Text(
              hadith.name,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      
        
        Image.asset(
          Assets.corner1.path,
          width: 90,
          height: 100,
        ),
      ],
        ),
      ),
            ),
      
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 30,
                  ),
      
                  child: Text(
                    hadith.content,
                    textDirection: TextDirection.rtl,
      
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
      
            Image.asset(Assets.mosque.path),
          ],
        ),
    ]);
    
  }
}