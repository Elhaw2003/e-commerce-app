import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/item_grid_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../data/models/product_model.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.items});
  final List<ProductModel> items;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 19.w,
            mainAxisSpacing: 20.h,
           childAspectRatio: 0.71
        ),
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
              duration: const Duration(seconds: 1),
              position: index,
              columnCount: 2,
              child: SlideAnimation(
                verticalOffset: 200.0,
                  child: FadeInAnimation(child: ItemGridViewWidget(productModel: items[index]))
              ),
          );
        },
      ),
    );
  }
}
