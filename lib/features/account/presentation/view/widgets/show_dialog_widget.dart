import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/features/account/presentation/view/widgets/item_show_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
      content:const ItemShowDialogWidget(),
    );
  }
}
