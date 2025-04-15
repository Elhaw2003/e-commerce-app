import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/address/presentation/view/address_screen.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/login_screen.dart';
import 'package:e_commerce_app/features/auth/register/presentation/view/register_screen.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/product_details_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/main_home/presentation/view/main_home_screen.dart';

class RouterGenerationConfig{
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.loginScreen,
      routes:[
        GoRoute(
            path: AppRoutes.loginScreen,
            name: AppRoutes.loginScreen,
            builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
            path: AppRoutes.registerScreen,
            name: AppRoutes.registerScreen,
            builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
            path: AppRoutes.mainHomeScreen,
            name: AppRoutes.mainHomeScreen,
            builder: (context, state) => const MainHomeScreen(),
        ),
        GoRoute(
            path: AppRoutes.productDetailsScreen,
            name: AppRoutes.productDetailsScreen,
            builder: (context, state) => const ProductDetailsScreen(),
        ),
        GoRoute(
            path: AppRoutes.addressScreen,
            name: AppRoutes.addressScreen,
            builder: (context, state) => const AddressScreen(),
        ),
      ]
  );
}