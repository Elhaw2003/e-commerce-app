import 'package:e_commerce_app/features/main_home/presentation/view/widgets/image_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class ProductDetailsItemWidget extends StatelessWidget {
  const ProductDetailsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageProductWidget(image: Assets.svgImagesImage, height: 368.53, width: double.infinity),
          const HeightSpacing(height: 12),
          Text(
            'T-Shirt',
            style: AppTextStyle.blackW600Size16DmSans.copyWith(fontSize: 24).copyWith(fontWeight: FontWeight.w600),
          ),
          const HeightSpacing(height: 13),
          Row(
            children: [
              Icon(Icons.star,color: AppColors.yellowColor,size: 18.sp,),
              const WidthSpacing(width: 6),
              Text(
                "4.0/5",
                style: AppTextStyle.blackW500Size16ReadexPro.copyWith(decoration: TextDecoration.underline,decorationThickness: 1.6.sp),
              ),
              Text(
                " (45 reviews)",
                style: AppTextStyle.greyW500Size12.copyWith(fontSize: 16),
              ),
            ],
          ),
          const HeightSpacing(height: 13),
          Text(
            """Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt .Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt .Good for All Men and Suits for All of Them""",
            style: AppTextStyle.greyW400Size16DmSans,
          ),
        ],
      ),
    );
  }
}