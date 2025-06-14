import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_icons.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomWelcome extends StatelessWidget {
  const CustomWelcome({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Row(
              children: [
                Text(
                  "Hi, Welcome Back",
                  style: AppStyle.typography20.copyWith(
                    color: AppColors.lightpink,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  // radius: ,
                  backgroundColor: AppColors.lightpink,
                  child: SvgPicture.asset(AppIcons.searchIcon),
                ),
              ],
            );
  }
  }
