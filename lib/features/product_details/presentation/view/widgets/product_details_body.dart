import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/widgets/box_product_details_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/widgets/product_details_item_widget.dart';
import 'package:flutter/material.dart';
class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpacing(height: 20),
          Expanded(
            child: SingleChildScrollView(
                child:  ProductDetailsItemWidget(productModel: productModel,)
            ),
          ),
          const HeightSpacing(height: 20),
           BoxProductDetailsWidget(productModel:productModel ,)
        ],
      ),
    ]
    );
  }
}
