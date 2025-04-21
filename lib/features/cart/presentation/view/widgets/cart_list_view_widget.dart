import 'package:e_commerce_app/features/cart/presentation/view/widgets/item_product_cart_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/spacing_widget.dart';
class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 2,
        separatorBuilder: (context, index) => const HeightSpacing(height: 20),
        itemBuilder: (context, index) {
          return const ItemProductCartWidget();
        },
      ),
    );
  }
}