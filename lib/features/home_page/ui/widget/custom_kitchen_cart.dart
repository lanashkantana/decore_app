import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_images.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomKitchenCart extends StatelessWidget {
  final List<NewCollectionData> data;
  const CustomKitchenCart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              clipBehavior: Clip.none,
              width: 360,
              // height: 230.h,
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 26,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].name.toString(),
                              style: AppStyle.subTilte15.copyWith(
                                color: AppColors.mutedCocoa,
                              ),
                            ),
                            16.verticalSpace,
                            SizedBox(
                              width: 170.w,
                              // height: ,
                              child: Text(
                                data[index].description.toString(),
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
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Image.asset(AppImages.start),
                                          RatingBarIndicator(
                                            rating: data[index].rate!.toDouble(),
                                            itemBuilder:
                                                (context, index) =>Image.asset(AppImages.start,color: AppColors.lightpink,),
                                              
                                                
                                                
                                            itemCount: 5,
                                            itemSize: 10.0,
                                            direction: Axis.horizontal,
                                          ),
                                          Text(
                                            data[index].rate.toString(),
                                            style: AppStyle.subText14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
      
                              10.horizontalSpace,
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
      
               
                  Positioned(
                    top: -50, 
                    right: 0,
                    child: Image.network(
                      data[index].image.toString(),
                      // height: 190, // تكبير الصورة
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
