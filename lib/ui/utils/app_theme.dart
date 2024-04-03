import 'package:flutter/material.dart';
import 'package:islami/ui/utils/app_colors.dart';

abstract class AppTheme {
  static const TextStyle appbarTextStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteblack,
  );
  static const TextStyle QuranTitleTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteblack,
  );
  static const TextStyle RegulerTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w400,
    color: AppColors.whiteblack,
  );

  static const TextStyle SebehaTextTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteblack,
  );

  static const TextStyle DoaaTextTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
}
