import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_button_widget.dart';
import 'package:e_commerce_app/features/cart/presentation/controller/cart/cart_cubit.dart';
import 'package:e_commerce_app/features/home_widget/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/custom_methods/custom_show_snack_bar.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_style.dart';
import '../../../../../core/utilities/app_texts.dart';

class BoxProductDetailsWidget extends StatelessWidget {
  const BoxProductDetailsWidget({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      // alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.borderTextFieldColor)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppTexts.price,
                  style: AppTextStyle.subTitleStyle,
                ),
                Text(
                  "\$ ${productModel.price}",
                  style: AppTextStyle.headLineStyle,
                ),
              ],
            ),
          ),
          BlocConsumer<CartCubit, CartState>(
            listener: (context, state) {
              if(state is CartSuccessAddingToCart){
                CustomShowSnackBar.customShowSnackBar(
                    type: AnimatedSnackBarType.success,
                    context: context,
                    message: AppTexts.addedToCartSuccessfully,
                    colorSnackBar: AppColors.greenColor,
                    icon: Icons.check_circle
                );
              }
            },
            builder: (context, state) {
              return   Expanded(
                    child: state is CartLoading ? const Center(
                        child: CircularProgressIndicator(color: AppColors.primaryColor,)
                    )
                        : CustomButtonWidget(
                    title: AppTexts.addToCart,
                    onPressed: (){
                      context.read<CartCubit>().addToCart(productModel: productModel, quantity: 1);
                    },
                    titleColor: AppColors.whiteColor,
                    buttonColor: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                    textStyle: AppTextStyle.whiteW600Size16,
                    iconLeft: Icons.card_travel_outlined,
                    width: 190,
                    height: 54
                    ),
                  );
            },
          )
        ],
      ),
    );
  }
}
