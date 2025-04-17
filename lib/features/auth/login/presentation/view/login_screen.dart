import 'package:e_commerce_app/features/auth/login/data/repo/login_repo_implementation.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../controller/login/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(loginRepo: LoginRepoImplementation()),
      child: const Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: LoginBody(),
      ),
    );
  }
}
