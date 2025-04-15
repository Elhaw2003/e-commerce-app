import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key, required this.thickness, this.endIndent, this.indent});
  final double thickness ;
  final double? endIndent ;
  final double? indent ;
  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: endIndent,
      indent: indent,
      color: AppColors.borderTextFieldColor,
      thickness: thickness,
    );
  }
}
