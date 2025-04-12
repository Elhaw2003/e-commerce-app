import 'package:e_commerce_app/core/text_field_validators.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field_widget.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/auth/widgets/title_and_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});
  @override
  State<LoginBody> createState() => _LoginBodyState();
}
class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const HeightSpacing(height: 59),
          SizedBox(
            width: 335.w,
            child: Text(
              AppTexts.loginToYourAccount,
              style: AppTextStyle.headLineStyle,
            ),
          ),
          const HeightSpacing(height: 8),
          Text(
            AppTexts.itsGreatToSeeYouAgain,
            style: AppTextStyle.subTitleStyle,
          ),
          const HeightSpacing(height: 24),
          TitleAndTextFieldWidget(
              title: AppTexts.userName,
              customTextFieldWidget: CustomTextFieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  hintText: AppTexts.enterYourEmailAddress,
                  controller: emailController,
                  validator: (value){
                    return MyValidators.emailValidator(value);
                  },
              ),
          ),
          const HeightSpacing(height: 16),
          TitleAndTextFieldWidget(
              title: AppTexts.password,
              customTextFieldWidget: CustomTextFieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: AppTexts.password,
                  controller: passwordController,
                  validator: (value){
                    return MyValidators.passwordValidator(value);
                  },
              ),
          ),
        ],
      ),
    );
  }
}
