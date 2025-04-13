import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/text_field_validators.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../widgets/title_and_text_field_widget.dart';

class CollectionTextFieldWidget extends StatelessWidget {
  const CollectionTextFieldWidget({super.key, required this.fullNameController, required this.emailController, required this.passwordController, required this.confirmPasswordController, this.onPressedPassword, required this.obscurePassword, required this.obscureConfirmPassword, this.onPressedConfirmPassword});
  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final  void Function()? onPressedPassword;
  final  void Function()? onPressedConfirmPassword;
  final bool obscurePassword;
  final bool obscureConfirmPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndTextFieldWidget(
          title: AppTexts.fullName,
          customTextFieldWidget: CustomTextFieldWidget(
            keyboardType: TextInputType.text,
            hintText: AppTexts.enterYourFullName,
            controller: fullNameController,
            validator: (value) {
              return MyValidators.displayNameValidator(value);
            },
          ),
        ),
        const HeightSpacing(height: 16),
        TitleAndTextFieldWidget(
          title: AppTexts.userName,
          customTextFieldWidget: CustomTextFieldWidget(
            keyboardType: TextInputType.text,
            hintText: AppTexts.enterYourEmailAddress,
            controller: emailController,
            validator: (value) {
              return MyValidators.emailValidator(value);
            },
          ),
        ),
        const HeightSpacing(height: 16),
        TitleAndTextFieldWidget(
          title: AppTexts.password,
          customTextFieldWidget: CustomTextFieldWidget(
            obscureText: obscurePassword,
            suffixIcon: IconButton(
                onPressed: onPressedPassword,
                icon: obscurePassword
                    ? Icon(
                  Icons.visibility_off,
                  size: 19.sp,
                  color: AppColors.greyColor,
                )
                    : Icon(
                  Icons.visibility,
                  size: 19.sp,
                  color: AppColors.primaryColor,
                )),
            keyboardType: TextInputType.text,
            hintText: AppTexts.enterYourPassword,
            controller: passwordController,
            validator: (value) {
              return MyValidators.passwordValidator(value);
            },
          ),
        ),
        const HeightSpacing(height: 42),
        TitleAndTextFieldWidget(
          title: AppTexts.confirmPassword,
          customTextFieldWidget: CustomTextFieldWidget(
            obscureText: obscureConfirmPassword,
            suffixIcon: IconButton(
                onPressed: onPressedConfirmPassword,
                icon: obscureConfirmPassword
                    ? Icon(
                  Icons.visibility_off,
                  size: 19.sp,
                  color: AppColors.greyColor,
                )
                    : Icon(
                  Icons.visibility,
                  size: 19.sp,
                  color: AppColors.primaryColor,
                )),
            keyboardType: TextInputType.text,
            hintText: AppTexts.enterYourPassword,
            controller: confirmPasswordController,
            validator: (value) {
              return MyValidators.repeatPasswordValidator(password: passwordController.text, value: value);
            },
          ),
        ),
      ]
    );
  }
}
