import 'package:e_commerce_app/core/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
class BoxProductDetailsWidget extends StatelessWidget {
  const BoxProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.borderTextFieldColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Price",
                style: AppTextStyle.subTitleStyle,
              ),
              Text(
                "\$ 19833",
                style: AppTextStyle.headLineStyle,
              ),
            ],
          ),
           CustomButtonWidget(
              title: AppTexts.addToCart,
              titleColor: AppColors.whiteColor,
              buttonColor: AppColors.primaryColor,
              borderColor: AppColors.primaryColor,
               textStyle: AppTextStyle.whiteW600Size16,
              iconLeft: Icons.card_travel_outlined,
              width: 190,
              height: 54
          )
        ],
      ),
    );
  }
}
