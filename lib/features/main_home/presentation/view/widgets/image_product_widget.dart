import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProductWidget extends StatelessWidget {
  const ImageProductWidget({super.key, required this.image, required this.height, required this.width});
  final String image;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
        height: height.h,
        width: width.w,
      ),
    );
  }
}
