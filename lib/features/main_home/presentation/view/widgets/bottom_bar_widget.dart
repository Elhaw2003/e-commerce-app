import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, this.onTap, required this.currentIndex});
  final void Function(int)? onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      elevation: 0,
      onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        selectedLabelStyle: AppTextStyle.greyW500Size12,
        unselectedLabelStyle: AppTextStyle.greyW500Size12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: AppTexts.cart,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: AppTexts.account,
          ),
        ]
    );
  }
}
