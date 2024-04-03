import 'package:flutter/material.dart%20';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_theme.dart';
import 'package:islami/ui/utils/constants.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Center(
              child: Image.asset(AppAsset.quran_tab_logo),
            )),
        Expanded(
          flex: 7,
          child: Stack(children: [
            buildScreenContent(),
            Center(
                child: VerticalDivider(
              thickness: 3,
              color: AppColors.orange,
              indent: 7,
            ))
          ]),
        )
      ],
    );
  }

  Expanded buildScreenContent() {
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          const Divider(
            thickness: 3,
            color: AppColors.orange,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "عدد الايات ",
                style: AppTheme.QuranTitleTextStyle,
              ),
              // Expanded(child: VerticalDivider(thickness: 3,color: AppColors.orange,)),
              Text(
                "اسم السوره",
                style: AppTheme.QuranTitleTextStyle,
              ),
            ],
          ),
          const Divider(
            thickness: 3,
            color: AppColors.orange,
          ),
          Expanded(flex: 7, child: build_Suras_ListView()),
        ],
      ),
    );
  }

  ListView build_Suras_ListView() {
    return ListView.builder(
      itemCount: Constants.suraNames.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Text(
              "${Constants.versesNumber[index]}",
              textAlign: TextAlign.center,
              style: AppTheme.RegulerTextStyle,
            )),
            Expanded(
                child: Text(
              Constants.suraNames[index],
              textAlign: TextAlign.center,
              style: AppTheme.RegulerTextStyle,
            )),
          ],
        );
      },
    );
  }
}
