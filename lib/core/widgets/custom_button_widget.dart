import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/app_colors.dart';
import '../utilities/app_texts.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      this.onPressed,
      required this.title,
      required this.titleColor,
      required this.buttonColor,
      required this.borderColor,
        required this.width,
        required this.height,
        this.iconLeft,
        this.iconRight,
        required this.textStyle
      }
      );
  final void Function()? onPressed;
  final String title;
  final Color titleColor;
  final Color buttonColor;
  final Color borderColor;
  final double width;
  final IconData? iconLeft;
  final IconData? iconRight;
  final double height;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(width.w, height.h)),
          alignment: Alignment.center,
          backgroundColor: WidgetStatePropertyAll(buttonColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: BorderSide(color: borderColor),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconLeft != null ? Icon(iconLeft,color: AppColors.whiteColor,size: 20.sp,):const SizedBox.shrink(),
            iconLeft != null ? const WidthSpacing(width: 10):const SizedBox.shrink(),
            Text(
              title,
              style: textStyle,
            ),
            iconRight != null ? const WidthSpacing(width: 10):const SizedBox.shrink(),
            iconRight != null ? Icon(iconRight,color: AppColors.whiteColor,size: 20.sp,):const SizedBox.shrink(),
          ],
        ),
    );
  }
}
