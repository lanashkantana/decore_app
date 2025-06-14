import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.subTilte15.copyWith(
        color: AppColors.orangeBrown,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
