import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/widgets/failure_widget.dart';
import 'package:e_commerce_app/core/widgets/loading_widget.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/change_selected_category/change_selected_category_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/products/products_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/grid_view_widget.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'category_view_widget.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, productsState) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacing(height: 59),
              Text(
                AppTexts.discover,
                style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 32),
              ),
              const HeightSpacing(height: 16),
              const SearchWidget(),
              const HeightSpacing(height: 16),
              CategoryViewWidget(scrollController: scrollController,),
              const HeightSpacing(height: 15),
              Expanded(
                child: productsState is ProductsLoading
                    ? const LoadingWidget()
                    : productsState is ProductsSuccess
                    ? RefreshIndicator(
                  backgroundColor: AppColors.whiteColor,
                  color: AppColors.primaryColor,
                    onRefresh: ()async{
                      BlocProvider.of<ChangeSelectedCategoryCubit>(context).changeCategory(index: 0);
                      BlocProvider.of<ProductsCubit>(context).getProducts();
                      scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: GridViewWidget(items: productsState.products))
                    : productsState is ProductsFailure
                    ? FailureWidget(
                  text: productsState.errorMessage,
                  onPressed: () => BlocProvider.of<ProductsCubit>(context).getProducts(),
                )
                    : const SizedBox.shrink(),
              ),
              const HeightSpacing(height: 8),
            ],
          ),
        );
      },
    );
  }
}
