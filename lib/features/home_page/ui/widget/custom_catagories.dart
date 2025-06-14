
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCatagories extends StatelessWidget {
  const CustomCatagories({
    super.key,
    required this.images2,
  });

  final List<String> images2;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images2.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(
            width: 67, // عرض العنصر الواحد
            decoration: BoxDecoration(
              color: AppColors.lightpink,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Image.asset(images2[index],color: AppColors.orangeBrown,),
            ),
          ),
        );
      },
    );
  }
}
