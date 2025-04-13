import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/login_screen.dart';
import 'package:e_commerce_app/features/auth/register/presentation/view/register_screen.dart';
import 'package:e_commerce_app/features/home/presentation/view/home_screen.dart';
import 'package:go_router/go_router.dart';

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
            path: AppRoutes.homeScreen,
            name: AppRoutes.homeScreen,
            builder: (context, state) => const HomeScreen(),
        ),
      ]
  );
}