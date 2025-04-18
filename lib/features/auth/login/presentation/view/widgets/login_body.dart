import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:e_commerce_app/core/custom_methods/custom_show_snack_bar.dart';
import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_button_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field_widget.dart';
import 'package:e_commerce_app/core/widgets/loading_widget.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/auth/login/presentation/controller/login/login_cubit.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/widgets/login_text_field_widget.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/widgets/sign_in_button_widget.dart';
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
    return SingleChildScrollView(
      child: Padding(
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
            LoginTextFieldWidget(
                onPressed: (){
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                emailController: emailController,
                passwordController: passwordController,
                obscureText: obscureText),
            const HeightSpacing(height: 55),
            SignInButtonWidget(
                emailController: emailController,
                passwordController: passwordController),
            const HeightSpacing(height: 363),
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
      ),
    );
  }
}
