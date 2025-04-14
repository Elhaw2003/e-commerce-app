import 'package:e_commerce_app/core/text_field_validators.dart';
import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_button_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field_widget.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/auth/register/presentation/view/widgets/collection_text_field_widget.dart';
import 'package:e_commerce_app/features/auth/widgets/rich_text_widget.dart';
import 'package:e_commerce_app/features/auth/widgets/title_and_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/app_routes.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}
class _RegisterBodyState extends State<RegisterBody> {
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpacing(height: 59),
                SizedBox(
                  width: 335.w,
                  child: Text(
                    AppTexts.createAnAccount,
                    style: AppTextStyle.headLineStyle,
                  ),
                ),
                const HeightSpacing(height: 8),
                Text(
                  AppTexts.letsCreateYourAccount,
                  style: AppTextStyle.subTitleStyle,
                ),
                const HeightSpacing(height: 24),
                CollectionTextFieldWidget(
                    fullNameController: fullNameController,
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController,
                    obscurePassword: obscurePassword,
                    obscureConfirmPassword: obscureConfirmPassword,
                  onPressedPassword: (){
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                  },
                  onPressedConfirmPassword: (){
                      setState(() {
                        obscureConfirmPassword = !obscureConfirmPassword;
                      });
                  },
                ),
                const HeightSpacing(height: 55),
                CustomButtonWidget(
                    title: AppTexts.createAccount,
                    titleColor: AppColors.whiteColor,
                    buttonColor: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                    textStyle: AppTextStyle.whiteW500Size14,
                    width: MediaQuery.of(context).size.width,
                    height: 50.h),
                const Spacer(),
                Center(
                  child: RichTextWidget(
                    firstText: AppTexts.alreadyHaveAnAccount,
                    secondText: AppTexts.logIn,
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                ),
                const HeightSpacing(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
