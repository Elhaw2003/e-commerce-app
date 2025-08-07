import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';

class ImageProductWidget extends StatelessWidget {
  const ImageProductWidget({super.key, required this.image, required this.height, required this.width});
  final String image;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: CachedNetworkImage(
        imageUrl: image != null && image!.isNotEmpty
            ? image!
            : 'https://via.placeholder.com/200',
        height: height,
        width: width,
        fit: BoxFit.fill,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(color: AppColors.primaryColor),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error_outlined),
      ),
    );
  }
}
