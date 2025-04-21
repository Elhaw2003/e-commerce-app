import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemContainerCartWidget extends StatelessWidget {
  const ItemContainerCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 14.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.borderTextFieldColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(width: 79,height: 83,color: AppColors.primaryColor,),
          const WidthSpacing(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Regular Fit Slogan",style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontWeight: FontWeight.w600)),
              Text("Size L",style: AppTextStyle.subTitleStyle,),
              const HeightSpacing(height: 21),
              Text(
                "\$ 1,190",
                style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontWeight: FontWeight.w600,fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
