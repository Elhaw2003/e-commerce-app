
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
  static TextStyle blackW500Size16 = GoogleFonts.readexPro(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp
  );
}