import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAndMinusButtonWidget extends StatelessWidget {
  const AddAndMinusButtonWidget({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 23.w,
        height: 23.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderTextFieldColor),
          borderRadius: BorderRadius.circular(2.97.r),
        ),
        child: Icon(icon,color: AppColors.blackColor,size: 16.sp,),
      ),
    );
  }
}
