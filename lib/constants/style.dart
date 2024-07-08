import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherz/constants/color.dart';

class AppTextStyles {
  //Rubik Mono One
  static TextStyle smallRubikTertiary = GoogleFonts.rubikMonoOne().copyWith(
    fontSize: 10.sp,
    color: AppColors.tertiary,
  );
  static TextStyle mediumRubikTertiary = GoogleFonts.rubikMonoOne().copyWith(
    fontSize: 16.sp,
    color: AppColors.tertiary,
  );
  static TextStyle largeRubikTertiary = GoogleFonts.rubikMonoOne().copyWith(
    fontSize: 24.sp,
    color: AppColors.tertiary,
  );
  static TextStyle logoTertiary = GoogleFonts.rubikMonoOne().copyWith(
    fontSize: 48.sp,
    color: AppColors.tertiary,
  );
  static TextStyle logoColored = GoogleFonts.rubikMonoOne().copyWith(
    fontSize: 48.sp,
    color: AppColors.logo,
  );

  //Tertiary

  static TextStyle smallTertiary = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.tertiary,
  );
  static TextStyle mediumTertiary = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.tertiary,
  );
  static TextStyle largeTertiary = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.tertiary,
  );

  static TextStyle smallTertiaryBold = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.tertiary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mediumTertiaryBold = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.tertiary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle largeTertiaryBold = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.tertiary,
    fontWeight: FontWeight.bold,
  );

  //Primary

  static TextStyle smallWhite = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.primary,
  );
  static TextStyle mediumWhite = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.primary,
  );
  static TextStyle largeWhite = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.primary,
  );

  static TextStyle smallWhiteBold = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mediumWhiteBold = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle largeWhiteBold = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );

  //Black

  static TextStyle smallBlack = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.black,
  );
  static TextStyle mediumBlack = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.black,
  );
  static TextStyle largeBlack = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.black,
  );

  static TextStyle smallBlackBold = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mediumBlackBold = GoogleFonts.roboto().copyWith(
    fontSize: 16.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle largeBlackBold = GoogleFonts.roboto().copyWith(
    fontSize: 24.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  //Error

  static TextStyle error = GoogleFonts.roboto().copyWith(
    fontSize: 10.sp,
    color: AppColors.error,
  );
}
