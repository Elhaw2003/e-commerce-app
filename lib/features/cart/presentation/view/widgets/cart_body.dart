import 'package:e_commerce_app/features/cart/presentation/view/widgets/cart_list_view_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/view/widgets/collection_item_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const HeightSpacing(height: 59),
          Center(child: Text(AppTexts.myCart,style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 24),)),
          const Expanded(
            child: CartListViewWidget(),
          ),
          const CollectionItemPriceWidget(),
          const HeightSpacing(height: 51),
          CustomButtonWidget(
              title: AppTexts.goToCheckout,
              titleColor: AppColors.whiteColor,
              buttonColor: AppColors.primaryColor,
              borderColor: AppColors.primaryColor,
              textStyle: AppTextStyle.whiteW600Size16,
              iconRight: Icons.arrow_forward,
              width: double.infinity,
              height: 54
          ),
          const HeightSpacing(height: 20),
        ],
      ),
    );
  }
}
