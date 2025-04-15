import 'package:e_commerce_app/features/cart/presentation/view/widgets/item_product_cart_widget.dart';
import 'package:flutter/material.dart';
class CartListViewWidget extends StatelessWidget {
  const CartListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:const [
        ItemProductCartWidget()
      ]
    );
  }
}