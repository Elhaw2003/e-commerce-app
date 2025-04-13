import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/home_screen.dart';
import 'package:e_commerce_app/features/main_home/presentation/view/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    Container(
      color: AppColors.primaryColor
    ),
    Container(
      color: AppColors.greyColor
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: screens[currentIndex],
      bottomNavigationBar: BottomBarWidget(
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
