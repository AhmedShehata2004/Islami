import 'package:flutter/material.dart';
import 'package:islami/ui/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/ui/tabs/quran/quran_tab.dart';
import 'package:islami/ui/tabs/radio/radio_tab.dart';
import 'package:islami/ui/tabs/sebeha/sebeha_tab.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_theme.dart';

import '../../utils/app_colors.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'homescreen';

  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentTabIndex = 0;
  Widget currentTab = QuranTab();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAsset.background_light))),
      child: Scaffold(
        backgroundColor: AppColors.trasparent,
        appBar: buildAppBar(),
        bottomNavigationBar: buildBootomNavigation(),
        body: currentTab,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.trasparent,
      centerTitle: true,
      elevation: 0,
      title: const Text(
        'اسلامى',
        style: AppTheme.appbarTextStyle,
      ),
    );
  }

  Widget buildBootomNavigation() => Theme(
        data: ThemeData(canvasColor: AppColors.orange),
        child: BottomNavigationBar(
          // INSTEAD OF THEME
          // backgroundColor: AppColors.orange,
          // type: BottomNavigationBarType.fixed,
          items: [
            buildBottomNavigationBarItem(AppAsset.mosehaf_icon, "القران"),
            buildBottomNavigationBarItem(AppAsset.sebeha_icon, "السبحه"),
            buildBottomNavigationBarItem(AppAsset.hadeth_icon, "الاحاديث"),
            buildBottomNavigationBarItem(AppAsset.radio_icon, "الراديو"),
          ],
          selectedItemColor: AppColors.whiteblack,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentTabIndex,

          onTap: (index) {
            currentTabIndex = index;

            if (currentTabIndex == 0) {
              currentTab = QuranTab();
            } else if (currentTabIndex == 1) {
              currentTab = SebehaTab();
            } else if (currentTabIndex == 2) {
              currentTab = HadethTab();
            } else {
              currentTab = RadioTab();
            }

            setState(
              () {},
            );
          },
        ),
      );

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String imagepath,
    String label,
  ) =>
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(imagepath),
            size: 32,
          ),
          label: label);
}
