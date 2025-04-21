import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/custom_methods/custom_show_snack_bar.dart';
import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_text_style.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/custom_button_widget.dart';
import '../../../../../../core/widgets/loading_widget.dart';
import '../../controller/login/login_cubit.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          CustomShowSnackBar.customShowSnackBar(
              type: AnimatedSnackBarType.error,
              context: context,
              message: state.errorMessage,
              colorSnackBar: AppColors.redColor,
              icon: Icons.error
          );
        }
        else if (state is LoginSuccess) {
          CustomShowSnackBar.customShowSnackBar(
              type: AnimatedSnackBarType.success,
              context: context,
              message: AppTexts.loginSuccessfully,
              colorSnackBar: AppColors.greenColor,
              icon: Icons.check_circle
          );
          context.pushReplacementNamed(AppRoutes.mainHomeScreen);
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
    );
  }
}
