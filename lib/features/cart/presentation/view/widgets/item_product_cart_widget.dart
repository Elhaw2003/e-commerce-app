import 'package:e_commerce_app/features/cart/presentation/view/widgets/item_container_cart_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/view/widgets/row_add_minus_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'delete_product_button_widget.dart';

class ItemProductCartWidget extends StatelessWidget {
  const ItemProductCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.topRight,
        children: [
          const ItemContainerCartWidget(),
          const DeleteProductButtonWidget(),
          Positioned(
              bottom: 14.h,
              right: 15.w,
              child: const RowAddMinusWidget()
          )
        ]
    );
  }
}
