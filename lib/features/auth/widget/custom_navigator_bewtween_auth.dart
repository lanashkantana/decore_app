
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';

class navigatorBetweenAuth extends StatelessWidget {
  final String title1;
  final String title2;
  final Function onPressed;

  const navigatorBetweenAuth({
    super.key, required this.title1, required this.title2, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: (){
          onPressed();
        },
        child: RichText(
          text: TextSpan(
            text: title1,
            style: AppStyle.paragraph13.copyWith(
              color: AppColors.charcoalBrown,
            ),
            children: [
              TextSpan(
                text: title2,
                style: AppStyle.paragraph13.copyWith(
                  color: AppColors.orangeBrown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
