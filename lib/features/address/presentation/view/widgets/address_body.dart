import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_divider_widget.dart';
import 'package:e_commerce_app/core/widgets/spacing_widget.dart';
import 'package:e_commerce_app/features/address/presentation/view/widgets/address_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_text_style.dart';

class AddressBody extends StatelessWidget {
  const AddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const HeightSpacing(height: 24),
          const CustomDividerWidget(thickness: 1),
          const HeightSpacing(height: 14),
          Text(AppTexts.savedAddress,style: AppTextStyle.blackW500Size16ReadexPro.copyWith(fontWeight: FontWeight.w600),),
          const HeightSpacing(height: 14),
          const Expanded(child: AddressListViewWidget())
        ],
      ),
    );
  }
}
