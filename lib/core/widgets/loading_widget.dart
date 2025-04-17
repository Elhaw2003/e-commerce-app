import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../generated/assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(Assets.lottieLoading, width: 100.w, height: 100.h,fit: BoxFit.fill,),
    );
  }
}
