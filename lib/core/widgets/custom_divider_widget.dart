import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key, required this.thickness});
  final double thickness ;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.borderTextFieldColor,
      thickness: thickness,
    );
  }
}
