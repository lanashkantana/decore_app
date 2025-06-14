import 'package:first_task/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomSmoothIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  final Function(int) onDotClicked;

  const CustomSmoothIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
    required this.onDotClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: count,
        effect: SlideEffect(
          dotWidth: 20,
          dotHeight: 4,
          dotColor: AppColors.charcoalBrown,
          activeDotColor: AppColors.lightpink,
          spacing: 4,
        ),
        onDotClicked: onDotClicked,
      ),
    );
  }
}
