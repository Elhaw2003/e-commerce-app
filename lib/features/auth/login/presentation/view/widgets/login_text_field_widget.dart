import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/text_field_validators.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../widgets/title_and_text_field_widget.dart';

class LoginTextFieldWidget extends StatelessWidget {
  const LoginTextFieldWidget({super.key, required this.emailController, required this.passwordController, this.onPressed, required this.obscureText});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final void Function()? onPressed;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAndTextFieldWidget(
          title: AppTexts.userName,
          customTextFieldWidget: CustomTextFieldWidget(
            keyboardType: TextInputType.emailAddress,
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
            obscureText: obscureText,
            suffixIcon: IconButton(
                onPressed: onPressed,
                icon: obscureText
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
            hintText: AppTexts.password,
            controller: passwordController,
            validator: (value) {
              return MyValidators.passwordValidator(value);
            },
          ),
        ),
      ],
    );
  }
}
