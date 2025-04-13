import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_text_style.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/features/home/presentation/view/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Container(
      color: AppColors.redColor
    ),
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
