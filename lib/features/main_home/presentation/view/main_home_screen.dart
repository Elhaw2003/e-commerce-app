import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/features/account/presentation/view/account_screen.dart';
import 'package:e_commerce_app/features/cart/presentation/view/cart_screen.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/categories/categories_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/controller/change_selected_category/change_selected_category_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/home_screen.dart';
import 'package:e_commerce_app/features/main_home/presentation/view/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home_widget/data/home_repo/home_repo_implementation.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CategoriesCubit(homeRepo: HomeRepoImplementation())),
        BlocProvider(create: (context) => ChangeSelectedCategoryCubit()),
      ],
      child: Scaffold(
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
      ),
    );
  }
}
