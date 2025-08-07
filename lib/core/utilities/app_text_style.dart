
import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextStyle {
  static TextStyle headLineStyle = GoogleFonts.readexPro(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: 25.sp
  );
  static TextStyle subTitleStyle = GoogleFonts.readexPro(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp
  );
  static TextStyle greyW400Size16DmSans = GoogleFonts.dmSans(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp
  );
  static TextStyle blackW500Size16ReadexPro = GoogleFonts.readexPro(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp
  );
  static TextStyle whiteW500Size14 = GoogleFonts.dmSans(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp
  );
  static TextStyle whiteW600Size16 = GoogleFonts.readexPro(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp
  );
  static TextStyle blackW600Size16DmSans = GoogleFonts.dmSans(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp
  );
  static TextStyle greyW500Size12 = GoogleFonts.readexPro(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp
  );
}