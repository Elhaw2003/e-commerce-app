import 'package:e_commerce_app/features/home_widget/presentation/controller/products/products_cubit.dart';
import 'package:e_commerce_app/features/home_widget/presentation/view/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}