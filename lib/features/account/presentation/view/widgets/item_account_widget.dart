import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ItemAccountWidget extends StatelessWidget {
  const ItemAccountWidget({super.key, required this.svgImage, required this.title, this.onTap});
  final String svgImage;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          alignment: Alignment.center,
          height: 60.h,
          child: Row(
            children: [
              SvgPicture.asset(svgImage,height: 24.h,width: 24.w,),
              const WidthSpacing(width: 16),
              Text(title,style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontWeight: FontWeight.w400),),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,color: AppColors.greyColor.withOpacity(0.6),)
            ],
          ),
        ),
      ),
    );
  }
}