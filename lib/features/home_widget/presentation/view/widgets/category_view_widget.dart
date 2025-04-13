import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../data/models/category_model.dart';
import 'categories_container_widget.dart';

class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => WidthSpacing(width: 8.w),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesContainerWidget(
            title: categories[index].title,
            buttonColor: AppColors.whiteColor,
            titleColor: AppColors.blackColor,
            borderColor: AppColors.borderTextFieldColor,
          );
        },
      ),
    );
  }
}
