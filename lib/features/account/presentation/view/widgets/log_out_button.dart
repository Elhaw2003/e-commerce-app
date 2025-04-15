import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: TextButton.icon(
        icon: SvgPicture.asset(Assets.svgImagesLogOut),
          onPressed: (){},
           label: Text(AppTexts.logout,style: AppTextStyle.blackW500Size16ReadexPro.copyWith(color: AppColors.redColor,fontWeight: FontWeight.w400),),
      ),
    );
  }
}
