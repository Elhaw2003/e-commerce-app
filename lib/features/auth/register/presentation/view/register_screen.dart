import 'package:e_commerce_app/features/auth/register/presentation/view/widgets/register_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: RegisterBody(),
    );
  }
}
