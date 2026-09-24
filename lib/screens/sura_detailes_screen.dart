 

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/models/suras_data.dart';

class SuraDetailesScreen extends StatefulWidget {
  const SuraDetailesScreen({super.key});

  static String appRoute = "suraDetailesScreen";

  @override
  State<SuraDetailesScreen> createState() => _SuraDetailesScreenState();
}

class _SuraDetailesScreenState extends State<SuraDetailesScreen> {
  
  bool isLoading = true;
  List<String> ayas = [];
  @override
  void initState() {
    super.initState();
    // خد الـ arguments في initState مش هتقدر لأنها محتاجة context جاهز
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final surasData = ModalRoute.of(context)!.settings.arguments as SurasData;
      readtextFiles(surasData.id);
    });
  }

  Future<void> readtextFiles(int id) async {
    try {
      String data = await rootBundle.loadString(
        "assets/files/suras/$id (5).txt",
      );

      setState(() {
       ayas=data.trim().split("\n");
        isLoading = false;
      });
    } catch (e) {
      print("Error loading file: $e");
      setState(() {
         ayas [id] = "تعذر تحميل المحتوى";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SurasData surasData =
        ModalRoute.of(context)!.settings.arguments as SurasData;

    return Scaffold(
      backgroundColor: AppColors.grayColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.goldColor),
        ),
        title: Row(
          children: [
            SizedBox(width: 100),
            Text(
              surasData.suraNameEn,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.goldColor,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.grayColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.grayColor,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Transform.flip(
                    flipX: true,
                    child: Image.asset(
                      Assets.corner1.path,
                      width: 100,
                      height: 100,
                      color: AppColors.goldColor,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Center(
                      child: Text(
                        surasData.suraNameAr,
                        style: TextStyle(
                          color: AppColors.goldColor,
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
                    color: AppColors.goldColor,
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  
                 children:[ RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.goldColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 2,
                     
                    ),
                    children: [
                      ...List.generate(ayas.length, (index) {
                        return TextSpan(text: "(${index+1}) ${ayas[index]}");
                      }),
                    ],
                  ),textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
                          ]),
              )
            ),
            Image.asset(Assets.mosque.path),
          ],
        ),
      ),
    );
  }
}
