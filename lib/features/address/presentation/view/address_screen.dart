import 'package:e_commerce_app/core/utilities/app_colors.dart';
import 'package:e_commerce_app/core/utilities/app_texts.dart';
import 'package:e_commerce_app/core/widgets/custom_appbar_widget.dart';
import 'package:e_commerce_app/features/address/presentation/view/widgets/address_body.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
       flexibleSpace: const CustomAppbarWidget(title: AppTexts.address),
      ),
      body: const AddressBody(),
    );
  }
}
