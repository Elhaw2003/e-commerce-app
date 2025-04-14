import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import '../utilities/app_text_style.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 24,fontWeight: FontWeight.w600),
      ),
    );
  }
}
