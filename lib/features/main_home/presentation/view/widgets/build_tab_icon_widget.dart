import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BuildTabIconWidget extends StatelessWidget {
  const BuildTabIconWidget({super.key, required this.icon, required this.selected});
  final IconData icon;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeOutCirc,
      duration: const Duration(milliseconds: 500),
      width: 75.w,
      height: 47.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? AppColors.primaryColor.withOpacity(0.2) : Colors.transparent,
        borderRadius: BorderRadius.circular(40.r)
      ),
      child: Icon(
        icon,
        size: 25.sp,
        color: selected ? AppColors.primaryColor : AppColors.greyColor,
      ),
    );
  }
}