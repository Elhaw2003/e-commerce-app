import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../../../generated/assets.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFieldWidget(
              prefixIcon: Icon(
                Icons.search_outlined,
                color: AppColors.greyColor,
                size: 24.sp,
              ),
              hintText: AppTexts.searchForClothes,
              controller: TextEditingController(),
              keyboardType: TextInputType.text),
        ),
        const WidthSpacing(width: 8),
        Container(
          alignment: Alignment.center,
          width: 52.w,
          height: 52.h,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10.r)),
          child: SvgPicture.asset(
            Assets.svgImagesFilter,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
