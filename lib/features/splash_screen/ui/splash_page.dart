import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/features/splash_screen/ui/widget/splash_page_body.dart';
import 'package:flutter/material.dart';



class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightpink,
      body:SplashViewBody()
    );
  }
}