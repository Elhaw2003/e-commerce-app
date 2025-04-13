import 'package:e_commerce_app/features/home_widget/data/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemGridViewWidget extends StatelessWidget {
  const ItemGridViewWidget({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(itemModel.imageUrl,fit: BoxFit.fill,height: 174.h,width: 161.w,)
          ),
          const HeightSpacing(height: 8),
          Text(
            itemModel.title,
            style: AppTextStyle.blackW600Size16,
          ),
          const HeightSpacing(height: 3),
          Text(
            "\$ ${itemModel.price}",
            style: AppTextStyle.greyW500Size12,
          ),
        ],
      ),
    );
  }
}
