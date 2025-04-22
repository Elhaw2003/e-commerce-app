import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/core/routing/router_generation_config.dart';
import 'package:e_commerce_app/core/services/save_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class ItemShowDialogWidget extends StatelessWidget {
  const ItemShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const HeightSpacing(height: 24),
        SvgPicture.asset(
          Assets.svgImagesWarning,
          width: 78.w,
          height: 78.h,
          fit: BoxFit.fill,
        ),
        const HeightSpacing(height: 12),
        Text(
          '${AppTexts.logout}?',
          style: AppTextStyle.blackW500Size16ReadexPro
              .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const HeightSpacing(height: 8),
        Text(
          AppTexts.areYouSureYouWantToLogout,
          style: AppTextStyle.subTitleStyle,
        ),
        const HeightSpacing(height: 40),
        CustomButtonWidget(
          onPressed: (){
            SaveStorage.removeToken();
            context.pushReplacementNamed(AppRoutes.loginScreen);
          },
            title: AppTexts.yesLogout,
            buttonColor: AppColors.redColor,
            borderColor: AppColors.redColor,
            width: double.infinity,
            height: 54,
            textStyle: AppTextStyle.whiteW600Size16
        ),
        const HeightSpacing(height: 12),
        CustomButtonWidget(
          onPressed: (){
            context.pop();
          },
            title: AppTexts.noCancel,
            buttonColor: AppColors.whiteColor,
            borderColor: AppColors.borderTextFieldColor,
            width: double.infinity,
            height: 54,
            textStyle: AppTextStyle.blackW500Size16ReadexPro
        ),
        const HeightSpacing(height: 24)
      ],
    );
  }
}
