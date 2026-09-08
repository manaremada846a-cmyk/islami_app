import 'package:flutter/material.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/commen/images.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  static String appRoute = "introScreen";

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}
 
class _IntroScreenState extends State<IntroScreen> {
   String text1="Welcome To Islmi App";
   String text2="Welcome To Islmi App";
  String imageUrl= AppImages.introImage1;
 String buttonText="Next";
 int count=0;
  @override
  Widget build(BuildContext context) {
    List<String> imagesUrls = [
      AppImages.introImage1,
      AppImages.introImage2,
      AppImages.introImage3,
      AppImages.introImage4,
      AppImages.introImage5,
    ];
    List<String> texts = [
      "Welcome To Islmi App",
      "Welcome To Islami",
      "Reading the Quran",
      "Bearish",
      "Holy Quran Radio",
    ];
     List<String> texts2 = [
      "",
      "We Are Very Excited To Have You In Our \nCommunity",
      "Read, and your Lord is the Most Generous",
      "Praise the name of your Lord, the Most \nHigh",
      "You can listen to the Holy Quran Radio through\n the application for free and easily",
    ];
   {
       
   
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(55),
                child: Image.asset(AppImages.islamiBackground),
              ),
              Positioned(
                top: 140,
                left: 125,
                child: Image.asset(AppImages.islamiImage),
              ),
            ],
          ),
          Align(
            alignment: AlignmentGeometry.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(imageUrl),
            ),
          ),
          SizedBox(
            height: 120,
            child: Center(
              child: Column(
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      color: AppColors.goldColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),if(count!=0)
                   Padding(
                     padding: const EdgeInsets.all(12),
                     child: Row( mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        
                         Text(
                          text2,
                          style: TextStyle(
                            color: AppColors.goldColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                                           ),
                       ],
                     ),
                   ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  if(count!=0){
                    count--;
                      text1=texts[count];
                  imageUrl= imagesUrls[count];
                  text2=texts2[count];
                  }
                  else{}
                  
                  if(count==4) {
                   buttonText="Finish";
                   
                 }else{ buttonText="Next";}
                  setState(() {
                    
                  });
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 270),
              TextButton(
                onPressed: () {
                if(count!=4){
          count++;
                  text1=texts[count];
                  imageUrl= imagesUrls[count];
                   text2=texts2[count];
                  
                 } 
                 
                if(count==4) {
                   buttonText="Finish";
                   
                 }else{ buttonText="Next";}
              setState(() {
                
              });
                },
                child: Text(
                 buttonText,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
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
}