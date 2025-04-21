import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/address/presentation/view/address_screen.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/login_screen.dart';
import 'package:e_commerce_app/features/auth/register/presentation/view/register_screen.dart';
import 'package:e_commerce_app/features/cart/data/repo/cart_repo_implementation.dart';
import 'package:e_commerce_app/features/cart/presentation/controller/cart/cart_cubit.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/product_details_screen.dart';
import 'package:e_commerce_app/features/spalsh/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_widget/data/models/product_model.dart';
import '../../features/main_home/presentation/view/main_home_screen.dart';

class RouterGenerationConfig{
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
      routes:[
        GoRoute(
            path: AppRoutes.loginScreen,
            name: AppRoutes.loginScreen,
            builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
            path: AppRoutes.splashScreen,
            name: AppRoutes.splashScreen,
            builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
            path: AppRoutes.registerScreen,
            name: AppRoutes.registerScreen,
            builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
            path: AppRoutes.mainHomeScreen,
            name: AppRoutes.mainHomeScreen,
            builder: (context, state) => BlocProvider(
              create: (context) => CartCubit(cartRepo: CartRepoImplementation()),
                child: const MainHomeScreen()),
        ),
        GoRoute(
            path: AppRoutes.productDetailsScreen,
            name: AppRoutes.productDetailsScreen,
            builder: (context, state) {
              final productModel = state.extra as ProductModel;
            return  BlocProvider(
              create: (context) => CartCubit(cartRepo: CartRepoImplementation()),
              child: ProductDetailsScreen(
                  productModel:productModel,
                ),
            );
            },
        ),
        GoRoute(
            path: AppRoutes.addressScreen,
            name: AppRoutes.addressScreen,
            builder: (context, state) => const AddressScreen(),
        ),
      ]
  );
}