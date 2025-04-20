import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/change_selected_category/change_selected_category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';

class CategoriesContainerWidget extends StatelessWidget {
  const CategoriesContainerWidget({super.key, required this.title, required this.index,});
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeSelectedCategoryCubit, ChangeSelectedCategoryState>(
  builder: (context, state) {
    var cubit = BlocProvider.of<ChangeSelectedCategoryCubit>(context);
    return GestureDetector(
    onTap: (){
           cubit.changeCategory(index: index);
    },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: cubit.index == index ? AppColors.primaryColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: cubit.index == index ? AppColors.primaryColor : AppColors.borderTextFieldColor),
        ),
        child: Text(
          title,
          style: AppTextStyle.blackW500Size16ReadexPro.copyWith(color: cubit.index == index ? AppColors.whiteColor : AppColors.blackColor),
        )
      ),
    );
  },
);
  }
}
