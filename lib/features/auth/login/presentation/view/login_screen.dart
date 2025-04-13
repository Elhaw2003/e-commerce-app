import 'package:e_commerce_app/features/auth/login/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: LoginBody(),
    );
  }
}
