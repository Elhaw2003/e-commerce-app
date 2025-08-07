import 'package:e_commerce_app/core/widgets/custom_shimmer_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.greyColor.withOpacity(0.5),
      highlightColor: AppColors.whiteColor,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 19.w,
            mainAxisSpacing: 20.h,
            childAspectRatio: 0.71
        ), itemBuilder: (BuildContext context, int index) {
        return const Column(
          children: [
            CustomShimmerContainerWidget(height: 174, width: 161, radius: 10),
            HeightSpacing(height: 8),
            CustomShimmerContainerWidget(height: 15, width: 161, radius: 10),
            HeightSpacing(height: 3),
            CustomShimmerContainerWidget(height: 15, width: 161, radius: 10),
          ],
        );
      },
      ),
    );
  }
}
