import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal:16.w,vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Icon(Icons.card_travel_outlined,color: AppColors.whiteColor,size: 20.sp,),
            const WidthSpacing(width: 10),
            Text(
              AppTexts.addToCart,
              style: AppTextStyle.whiteW500Size14.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
