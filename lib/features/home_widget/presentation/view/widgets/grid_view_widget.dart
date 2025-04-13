import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/item_grid_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/item_model.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.items});
  final List<ItemModel> items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
        return ItemGridViewWidget(itemModel: items[index]);
      },
    );
  }
}
