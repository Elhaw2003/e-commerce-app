import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/routing/router_generation_config.dart';
import 'package:e_commerce_app/features/home_widget/data/home_repo/home_repo_implementation.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/services/manage_cubit_servise.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
    BlocProvider(
      create: (context) => ProductsCubit(homeRepo: HomeRepoImplementation()),
      child: const ECommerceApp(),
    ),
  );
}
class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RouterGenerationConfig.goRouter,
        );
      },
    );
  }
}
