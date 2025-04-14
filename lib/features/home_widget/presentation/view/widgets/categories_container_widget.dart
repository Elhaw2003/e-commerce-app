import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';

class CategoriesContainerWidget extends StatelessWidget {
  const CategoriesContainerWidget({super.key, required this.buttonColor, required this.titleColor, required this.borderColor, required this.title, this.onTap});
  final Color buttonColor;
  final Color titleColor;
  final Color borderColor;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: borderColor),
        ),
        child: Text(
          title,
          style: AppTextStyle.blackW500Size16ReadexPro.copyWith(color: titleColor),
        )
      ),
    );
  }
}
