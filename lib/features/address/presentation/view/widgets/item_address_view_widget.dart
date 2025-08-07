import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemAddressViewWidget extends StatelessWidget {
  const ItemAddressViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 14.h),
      height: 76.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.borderTextFieldColor),
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.greyColor,
            size: 24.sp,
          ),
          const WidthSpacing(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: AppTextStyle.blackW500Size16ReadexPro,
              ),
              SizedBox(
                width: 235.w,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  '2438 6th Ave, Ketchikan, Alaska 99901, USA',
                  style: AppTextStyle.subTitleStyle.copyWith(fontSize: 14),
                ),
              )
        ],
      ),
      ]
    )
      );
  }
}