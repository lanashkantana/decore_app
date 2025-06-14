import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_images.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomKitchenCart extends StatelessWidget {
  const CustomKitchenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 132.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightpink,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kitchen Cart",
                      style: AppStyle.subTilte15.copyWith(
                        color: AppColors.mutedCocoa,
                      ),
                    ),
                    16.verticalSpace,
                    SizedBox(
                      width: 170.w,
                      // height: ,
                      child: Text(
                        "Lorem ipsum dolor sit amet,consectetur adipiscing ",
                        style: AppStyle.paragraph13,
                        maxLines: 2,
                      ),
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Image.asset(AppImages.start),
                        2.horizontalSpace,
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                children: [
                                  Image.asset(AppImages.start),

                                  Text("4.5", style: AppStyle.subText14),
                                ],
                              ),
                            ),
                          ),
                        ),

                        55.horizontalSpace,
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "Shop Now",
                                style: AppStyle.typaragraph10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// ✅ الصورة خارج الأعلى
          Positioned(
            top: -50, // الصورة تطلع لفوق
            right: 0,
            child: Image.asset(
              AppImages.kitchenCard,
              height: 190, // تكبير الصورة
            ),
          ),
        ],
      ),
    );
  }
}
