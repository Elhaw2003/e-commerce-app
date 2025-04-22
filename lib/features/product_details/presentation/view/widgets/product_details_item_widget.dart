import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';
import 'package:e_commerce_app/features/main_home/presentation/view/widgets/image_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class ProductDetailsItemWidget extends StatelessWidget {
  const ProductDetailsItemWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: productModel.id,
              child: ImageProductWidget(image: productModel.image, height: 368.53, width: double.infinity)),
          const HeightSpacing(height: 12),
          Text(
            productModel.title,
            style: AppTextStyle.blackW600Size16DmSans.copyWith(fontSize: 24).copyWith(fontWeight: FontWeight.w600),
          ),
          const HeightSpacing(height: 13),
          Row(
            children: [
              Icon(Icons.star,color: AppColors.yellowColor,size: 18.sp,),
              const WidthSpacing(width: 6),
              Text(
                productModel.rating.rate.toString(),
                style: AppTextStyle.blackW500Size16ReadexPro.copyWith(decoration: TextDecoration.underline,decorationThickness: 1.6.sp),
              ),
              Text(
                " (${productModel.rating.count} ${AppTexts.reviews})",
                style: AppTextStyle.greyW500Size12.copyWith(fontSize: 16),
              ),
            ],
          ),
          const HeightSpacing(height: 13),
          Text(
            productModel.description,
            style: AppTextStyle.greyW400Size16DmSans,
          ),
        ],
      ),
    );
  }
}