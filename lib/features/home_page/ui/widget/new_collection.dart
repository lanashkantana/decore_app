import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_icons.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewCollection extends StatelessWidget {
  const NewCollection({
    super.key,
    required this.data,
  });

  final List<NewCollectionData> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: AppColors.colordcb,
      height: 230.h,
      width: double.infinity,
      
      child: ListView.builder(
        
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                CachedNetworkImage(
                imageUrl: data[index].image.toString(),
                fit: BoxFit.fill,
                width: 163.w,
                 height: 142.h,
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.broken_image),
              ),
                9.verticalSpace,
                Padding(
                   padding: const EdgeInsets.only(left: 10.0),
                  child: Text(data[index].name.toString(), style: AppStyle.subTilte15),
                ),
                9.verticalSpace,
                SizedBox(
                  width: 170.w,
                  // height: 20.h,
      
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      data[index].description.toString(),
                      style: AppStyle.typaragraph14.copyWith(color: AppColors.mutedCocoa)),
                    ),
                  
                ),
                15.verticalSpace,
      
             SizedBox(
              width:180 ,
             child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${data[index].price?.toDouble()}",
                      style: AppStyle.subTilte15.copyWith(
                        color: AppColors.orangeBrown,
                      ),
                    ),
                    // 50.horizontalSpace,
      
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       IconButton(icon:SvgPicture.asset(AppIcons.loveIcon,) ,onPressed: (){},  
          
                       ),
                       
                        
                        IconButton(icon:SvgPicture.asset(AppIcons.addIcon,) ,onPressed: (){}, 
                        //  padding: EdgeInsets.zero,
            // constraints: BoxConstraints(),
                        )
                      ],
                    ),
                  ],
                ),
             )
              ],
            ),
          );
        },
      ),
    );
  }
}
