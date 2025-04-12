import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utilities/app_colors.dart';
import '../../../core/utilities/app_texts.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key, required this.firstText, required this.secondText});
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor,
          ),
          children: [
            TextSpan(
              text: secondText,
              style: GoogleFonts.readexPro(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                  decoration: TextDecoration.underline
              ),
            )
          ]
      ),

    );
  }
}
