import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/widgets/box_product_details_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/widgets/product_details_item_widget.dart';
import 'package:flutter/material.dart';
class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSpacing(height: 20),
          Expanded(
            child: SingleChildScrollView(
                child:  ProductDetailsItemWidget()
            ),
          ),
          HeightSpacing(height: 20),
          BoxProductDetailsWidget()
        ],
      ),
    ]
    );
  }
}
