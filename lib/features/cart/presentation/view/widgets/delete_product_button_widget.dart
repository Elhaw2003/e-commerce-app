import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';

class DeleteProductButtonWidget extends StatelessWidget {
  const DeleteProductButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
        onPressed: (){},
        icon: Icon(Icons.delete,color: AppColors.redColor,size: 20.sp,)
    );
  }
}
