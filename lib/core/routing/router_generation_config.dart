import 'package:e_commerce_app/core/routing/app_routes.dart';
import 'package:e_commerce_app/features/auth/login/presentation/view/login_screen.dart';
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
      ]
  );
}