import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/services/save_storage.dart';
import '../../../generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
late AnimationController animationController ;
late Animation<double> animation ;
class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1,milliseconds: 500));
    animation = CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn);
    animationController.repeat(reverse: true);
    waitForAnimationAndNavigate();
    super.initState();
  }
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  waitForAnimationAndNavigate() async{
   await Future.delayed(
       const Duration(seconds: 3), () {
      SaveStorage.getToken().then((value) {
        if(value != null && value.isNotEmpty) {
          context.pushReplacementNamed(AppRoutes.mainHomeScreen);
        }else{
          context.pushReplacementNamed(AppRoutes.loginScreen);
        }
      }
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: ScaleTransition(
          scale: animation,
            child: Image.asset(Assets.imagesLogoApp, width: 200.w, height: 200.h,)),
      ),
    );
  }
}
