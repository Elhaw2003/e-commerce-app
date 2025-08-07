import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/utilities/app_colors.dart';
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key, required this.firstText, required this.secondText, this.onTap});
  final String firstText;
  final String secondText;
  final void Function()? onTap;
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
              recognizer: TapGestureRecognizer()
                ..onTap = onTap
            )
          ]
      ),

    );
  }
}
