import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_field_widget.dart';
import '../../../core/widgets/spacing_widget.dart';

class TitleAndTextFieldWidget extends StatelessWidget {
  const TitleAndTextFieldWidget({super.key, required this.title, required this.customTextFieldWidget});
  final String title;
  final Widget customTextFieldWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.blackW500Size16,
        ),
        const HeightSpacing(height: 4),
        customTextFieldWidget,
      ],
    );
  }
}
