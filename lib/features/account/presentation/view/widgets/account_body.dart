import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/core/routing/router_generation_config.dart';
import 'package:e_commerce_app/core/widgets/custom_divider_widget.dart';
import 'package:e_commerce_app/features/account/presentation/view/widgets/item_account_widget.dart';
import 'package:e_commerce_app/features/account/presentation/view/widgets/log_out_button.dart';
import 'package:e_commerce_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class AccountBody extends StatelessWidget {
  const AccountBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpacing(height: 59),
        Center(child: Text(AppTexts.account,style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 24),)),
        const HeightSpacing(height: 24),
        CustomDividerWidget(thickness: 1,indent: 24.w,endIndent: 24.w,),
        const ItemAccountWidget(svgImage: Assets.svgImagesBox, title: AppTexts.myOrders),
        const CustomDividerWidget(thickness: 8),
        const ItemAccountWidget(svgImage: Assets.svgImagesDetails, title: AppTexts.myDetails),
        CustomDividerWidget(thickness: 1,indent: 64.w,endIndent: 25.w,),
         ItemAccountWidget(
            svgImage: Assets.svgImagesAddress,
            title: AppTexts.addressBook,
          onTap:(){
              context.pushNamed(AppRoutes.addressScreen);
          } ,
        ),
        CustomDividerWidget(thickness: 1,indent: 64.w,endIndent: 25.w,),
        const ItemAccountWidget(svgImage: Assets.svgImagesQuestion, title: AppTexts.fAQs),
        CustomDividerWidget(thickness: 1,indent: 64.w,endIndent: 25.w,),
        ItemAccountWidget(svgImage: Assets.svgImagesHeadphones, title: AppTexts.helpCenter,onTap:(){} ,),
        const CustomDividerWidget(thickness: 8),
        const Spacer(),
        const LogOutButton(),
        const HeightSpacing(height: 50),
      ],
    );
  }
}