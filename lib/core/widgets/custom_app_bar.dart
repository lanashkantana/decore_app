 import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar({
    required final String title,
     final Function()? onPressed,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,

      centerTitle: true,
      title: Text(
        title.toString(),
        style: AppStyle.title20.copyWith(color: AppColors.lightpink),
      ),

      leading: Padding(padding: EdgeInsets.only(left: 15.r),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_rounded,
          size: 30.r,
          color: AppColors.mutedCocoa,
        ),
      ),),
    );
  }