import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_appbar_widget.dart';
import 'package:e_commerce_app/features/product_details/presentation/view/widgets/product_details_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        flexibleSpace: const CustomAppbarWidget(title: AppTexts.details),
      ),
      body: const ProductDetailsBody(),
    );
  }
}
