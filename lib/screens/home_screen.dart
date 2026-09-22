import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/commen/colors.dart';
import 'package:islami_app/gen/assets.gen.dart';
import 'package:islami_app/widgets/tabs/hadith_tab.dart';
import 'package:islami_app/widgets/tabs/quran_tab.dart';
import 'package:islami_app/widgets/tabs/radio_tab.dart';
import 'package:islami_app/widgets/tabs/sebha_tab.dart';
import 'package:islami_app/widgets/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String appRoute = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget>tabs=[QuranTab(),HadithTab(),SebhaTab(),RadioTab(),TimeTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      backgroundColor: AppColors.blackColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.goldColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
    _buildBottomNavigationBarIcon (path: Assets.quraan, label: 'Quraan'),
      _buildBottomNavigationBarIcon (path: Assets.page1, label: 'Hadith'),
        _buildBottomNavigationBarIcon (path: Assets.icSebha, label: 'Sepha'),
          _buildBottomNavigationBarIcon (path: Assets.icRadio, label: 'Radio'),
            _buildBottomNavigationBarIcon (path: Assets.icTime, label: 'Time'),

        ],
      ),
    );
  }
  BottomNavigationBarItem _buildBottomNavigationBarIcon ({ required String path, required String label}){
    return BottomNavigationBarItem(icon: SvgPicture.asset(
              path,width: 29,height: 30,
              colorFilter: ColorFilter.mode(
                AppColors.blackColor,
                BlendMode.srcIn,
              ),
            ),

            label:label ,
            
            activeIcon: Container(
           width:55 ,
           height:34 ,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.grayColor.withValues(alpha: .6),
                borderRadius: BorderRadius.circular(25),
              ),
              child: SvgPicture.asset(
                path,
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ), );
  }
}
