import 'package:e_commerce_app/core/routing/router_generation_config.dart';
import 'package:e_commerce_app/core/services/save_storage.dart';
import 'package:e_commerce_app/features/auth/login/data/repo/login_repo_implementation.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../controller/login/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    SaveStorage.getToken().then((value) {
      if(value != null && value.isNotEmpty) {
        context.pushReplacementNamed(AppRoutes.mainHomeScreen);
      }
    },
    );
  }
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
