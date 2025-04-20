import 'package:e_commerce_app/features/home_widget/presentation/controller/categories/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'categories_container_widget.dart';
class CategoryViewWidget extends StatelessWidget {
  const CategoryViewWidget({super.key, required this.scrollController,});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
      if (state is CategoriesSuccess) {
        return ListView.separated(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => WidthSpacing(width: 8.w),
          itemCount: state.categories.length,
          itemBuilder: (context, index) {
            return CategoriesContainerWidget(
              index: index,
              title: state.categories[index],
            );
          },
        );
      }
      return const SizedBox.shrink();
  },
),
    );
  }
}
