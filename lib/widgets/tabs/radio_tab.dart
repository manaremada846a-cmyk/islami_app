import 'package:flutter/material.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/widgets/radiocard.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(Assets.radioBg.path, fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                   AppColors.grayColor.withValues(alpha: .9),
                AppColors.grayColor.withValues(alpha: .8),

                 
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: Image.asset(Assets.imgHeader.path),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Row(
                  children: [
                    SizedBox(width: 185,height: 40,
                      child: ElevatedButton(
                        onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: AppColors.goldColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))) ,
                        child: Text(
                          "Radio",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackColor
                          ),
                        ),
                      ),
                    ), SizedBox(width: 185,height: 40,
                      child: ElevatedButton(
                        onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: AppColors.grayColor.withValues(alpha: .7),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))) ,
                        child: Text(
                          "Reciters",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ListView.separated(itemBuilder: (context, index) {
                  return Radiocard();
                  }, separatorBuilder: (context, index) {
                    return SizedBox(height: 15,);
                  }, itemCount: 20),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
