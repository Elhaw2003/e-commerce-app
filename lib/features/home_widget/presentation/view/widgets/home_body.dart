import 'package:e_commerce_app/core/widgets/failure_widget.dart';
import 'package:e_commerce_app/core/widgets/loading_widget.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/products/products_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/grid_view_widget.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import '../../../data/models/category_model.dart';
import 'category_view_widget.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(title: AppTexts.all),
      CategoryModel(title: AppTexts.tShirt),
      CategoryModel(title: AppTexts.jeans),
      CategoryModel(title: AppTexts.shoes),
      CategoryModel(title: AppTexts.hoodie),
    ];
    return BlocBuilder<ProductsCubit, ProductsState>(
  builder: (context, state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const HeightSpacing(height: 59),
        Text(
          AppTexts.discover,
          style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 32),
        ),
        const HeightSpacing(height: 16),
        const SearchWidget(),
        const HeightSpacing(height: 16),
        CategoryViewWidget(categories: categories),
        const HeightSpacing(height: 15),
        Expanded(
            child:state is ProductsLoading ?
            const LoadingWidget() :
            state is ProductsSuccess  ?
            GridViewWidget(items: state.products) :
            state is ProductsFailure ?
            FailureWidget(
              text: state.errorMessage,
              onPressed: BlocProvider.of<ProductsCubit>(context).getProducts,) :
             const SizedBox.shrink(),
        ),
        const HeightSpacing(height: 8),
      ]),
    );
  },
);
  }
}
