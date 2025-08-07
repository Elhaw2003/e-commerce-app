import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/view/widgets/add_and_minus_button_widget.dart';
import 'package:flutter/material.dart';
class RowAddMinusWidget extends StatelessWidget {
  const RowAddMinusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AddAndMinusButtonWidget(icon: Icons.remove),
        const WidthSpacing(width: 10),
        Text(
          "13",
          style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontSize: 12),
        ),
        const WidthSpacing(width: 10),
        const AddAndMinusButtonWidget(icon: Icons.add),
      ],
    );
  }
}
