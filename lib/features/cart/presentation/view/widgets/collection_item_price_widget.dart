import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/custom_divider_widget.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'item_price_widget.dart';

class CollectionItemPriceWidget extends StatelessWidget {
  const CollectionItemPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemPriceWidget(text: "Sub-total", price: "5,870",color: AppColors.greyColor),
        HeightSpacing(height: 16),
        ItemPriceWidget(text: "VAT (%)", price: "0.00",color: AppColors.greyColor),
        HeightSpacing(height: 16),
        ItemPriceWidget(text: "Shipping fee", price: "80",color: AppColors.greyColor),
        HeightSpacing(height: 16),
        CustomDividerWidget(thickness: 1),
        HeightSpacing(height: 16),
        ItemPriceWidget(text: "Price", price: "5,950",color: AppColors.blackColor,),
      ],
    );
  }
}
