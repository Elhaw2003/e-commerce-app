import 'package:e_commerce_app/core/text_field_validators.dart';
import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_button_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field_widget.dart';
import 'package:e_commerce_app/core/widgets/loading_widget.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/auth/login/presentation/controller/login/login_cubit.dart';
import 'package:e_commerce_app/features/auth/widgets/rich_text_widget.dart';
import 'package:e_commerce_app/features/auth/widgets/title_and_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/app_routes.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});
  @override
  State<LoginBody> createState() => _LoginBodyState();
}

bool obscureText = true;

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              // validator: (value) {
              //   return MyValidators.emailValidator(value);
              // },
            ),
          ),
          const HeightSpacing(height: 16),
          TitleAndTextFieldWidget(
            title: AppTexts.password,
            customTextFieldWidget: CustomTextFieldWidget(
              obscureText: obscureText,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
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
              // validator: (value) {
              //   return MyValidators.passwordValidator(value);
              // },
            ),
          ),
          const HeightSpacing(height: 55),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                customShowSnackBar(
                    context: context,
                    message: state.errorMessage,
                    colorSnackBar: AppColors.redColor,
                    icon: Icons.error
                );
              } else if (state is LoginSuccess) {
                customShowSnackBar(
                    context: context,
                    message: AppTexts.loginSuccessfully,
                    colorSnackBar: AppColors.greenColor,
                    icon: Icons.check_circle);
              }
            },
            builder: (context, state) {
              return state is LoginLoading
                  ? const LoadingWidget()
                  : CustomButtonWidget(
                      onPressed: () {
                        context.read<LoginCubit>().login(
                            username: emailController.text.trim(),
                            password: passwordController.text.trim());
                      },
                      title: AppTexts.signIn,
                      titleColor: AppColors.whiteColor,
                      buttonColor: AppColors.primaryColor,
                      borderColor: AppColors.primaryColor,
                      width: MediaQuery.of(context).size.width,
                      textStyle: AppTextStyle.whiteW500Size14,
                      height: 50.h);
            },
          ),
          const Spacer(),
          Center(
            child: RichTextWidget(
              firstText: AppTexts.dontHaveAnAccount,
              secondText: AppTexts.join,
              onTap: () {
                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
              },
            ),
          ),
          const HeightSpacing(height: 10)
        ],
      ),
    );
  }
}

void customShowSnackBar(
    {required BuildContext context,
    required String message,
    required Color colorSnackBar,
    required IconData icon}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(
              child: Text(
            message,
            style: AppTextStyle.whiteW600Size16,
          )),
        ],
      ),
      backgroundColor: colorSnackBar,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      duration: const Duration(seconds: 2),
      elevation: 6,
    ),
  );
}
