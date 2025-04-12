import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      this.onPressed,
      required this.title,
      required this.titleColor,
      required this.buttonColor,
      required this.borderColor,required this.width, required this.height});
  final void Function()? onPressed;
  final String title;
  final Color titleColor;
  final Color buttonColor;
  final Color borderColor;
  final double width;
  final double height;
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
        child: Text(
          title,
          style: AppTextStyle.whiteW500Size14
        ),
    );
  }
}
