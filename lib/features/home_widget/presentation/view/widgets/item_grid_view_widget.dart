import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/home_widget/data/models/item_model.dart';
import 'package:e_commerce_app/features/main_home/presentation/view/widgets/image_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class ItemGridViewWidget extends StatelessWidget {
  const ItemGridViewWidget({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(AppRoutes.productDetailsScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageProductWidget(image: Assets.svgImagesImage, height: 174, width: 161),
            const HeightSpacing(height: 8),
            SizedBox(
              width: 140.w,
              child: Text(
                overflow: TextOverflow.ellipsis,
                itemModel.title,
                style: AppTextStyle.blackW600Size16DmSans,
              ),
            ),
            const HeightSpacing(height: 3),
            Text(
              "\$ ${itemModel.price}",
              style: AppTextStyle.greyW500Size12,
            ),
          ],
        ),
      ),
    );
  }
}
