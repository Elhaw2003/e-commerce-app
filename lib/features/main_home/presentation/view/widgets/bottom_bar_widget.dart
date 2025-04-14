import 'package:e_commerce_app/features/main_home/presentation/view/widgets/build_tab_icon_widget.dart';
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
        items:  [
          BottomNavigationBarItem(
            icon: BuildTabIconWidget(icon: currentIndex == 0 ? Icons.home :Icons.home_outlined, selected: currentIndex == 0),
            label: AppTexts.home,
          ),
          BottomNavigationBarItem(
            icon: BuildTabIconWidget(icon: currentIndex == 1? Icons.shopping_cart :Icons.shopping_cart_outlined, selected: currentIndex == 1),
            label: AppTexts.cart,
          ),
          BottomNavigationBarItem(
            icon: BuildTabIconWidget(icon: currentIndex == 2 ? Icons.account_circle :Icons.account_circle_outlined, selected: currentIndex == 2),
            label: AppTexts.account,
          ),
        ]
    );
  }
}
