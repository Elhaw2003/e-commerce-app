import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_text_style.dart';

class ItemPriceWidget extends StatelessWidget {
  const ItemPriceWidget({super.key, required this.text, required this.price,required this.color});
  final String text;
  final String price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: AppTextStyle.greyW500Size12.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: color),),
        Text("\$ $price",style: AppTextStyle.blackW500Size16ReadexPro,),
      ],
    );
  }
}
