import 'package:flutter/material.dart%20';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_theme.dart';

class SebehaTab extends StatefulWidget {
  SebehaTab({super.key});

  @override
  State<SebehaTab> createState() => _SebehaTabState();
}

class _SebehaTabState extends State<SebehaTab> {
  int counter = 0;
  int index = 0;

  double angle = 0;
  List<String> doaa = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر ",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAsset.sebeha_head,
                    height: 100,
                  )),
            ),
            GestureDetector(
              onTap: counterMethod,
              //another way // (){counterMethod();},
              child: Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                      angle: angle, child: Image.asset(AppAsset.sebeha_body)),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "عدد التسبيحات",
            style: AppTheme.QuranTitleTextStyle,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.Whiteorange,
            ),
            child: Text(
              counter.toString(),
              style: AppTheme.QuranTitleTextStyle,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: AppColors.orange,
              ),
              child: Text(
                doaa[index],
                style: AppTheme.DoaaTextTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  counterMethod() {
    angle += 10;
    if (counter == 33) {
      counter = 0;
      if (index < doaa.length - 1) {
        index++;
      } else {
        index = 0;
      }
    } else {
      counter++;
    }
    setState(() {});
  }
}
