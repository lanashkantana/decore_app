import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final GestureTapCallback ontap;

  const CustomButton({
    super.key,
    required this.text,
    required this.ontap,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.lightpink,

          borderRadius: BorderRadius.circular(35),
        ),

        child: Padding(
          padding: EdgeInsets.all(8),

          child: Center(
            child: Text(text, style: AppStyle.title20.copyWith(color: color)),
          ),
        ),
      ),
    );
  }
}
