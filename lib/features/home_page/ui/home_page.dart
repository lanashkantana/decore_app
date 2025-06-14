import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_icons.dart';
import 'package:first_task/core/helpers/app_images.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/features/home_page/ui/widget/custom_animated_smooth_indector.dart';
import 'package:first_task/features/home_page/ui/widget/custom_catagories.dart';
import 'package:first_task/features/home_page/ui/widget/custom_kitchen_cart.dart';
import 'package:first_task/features/home_page/ui/widget/custom_smooth_indector.dart';
import 'package:first_task/features/home_page/ui/widget/custom_text.dart';
import 'package:first_task/features/home_page/ui/widget/custom_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  List<String> images = [
    AppImages.specialOfferHomePage,
    AppImages.specialOfferHomePage,
    AppImages.specialOfferHomePage,
  ];
  List<String> images2 = [
    AppIcons.catagoriesIcon1,
    AppIcons.catagoriesIcon3,
    AppIcons.catagoriesIcon3,
    AppIcons.catagoriesIcon4,
    AppIcons.catagoriesIcon1,
  ];
  List<String> images3 = [
    AppImages.newCollection1,
    AppImages.newCollection2,
        AppImages.newCollection1,
    AppImages.newCollection2,
  
  ];
 
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 33),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomWelcome(),
              Text(
                "Create spaces that bring joy",
                style: AppStyle.subtitle14.copyWith(
                  color: AppColors.charcoalBrown,
                ),
              ),
              20.verticalSpace,

              CustomCarouselSlider(
                images: images,
                carouselSliderController: _carouselController,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              20.verticalSpace,
              CustomSmoothIndicator(
                activeIndex: currentIndex,
                count: images.length,
                onDotClicked: (index) {
                  _carouselController.animateToPage(index);
                },
              ),
              20.verticalSpace,

              CustomText(text: "Categories"),

              20.verticalSpace,
              SizedBox(
                height: 67, // حدد ارتفاع مناسب حسب محتوى العناصر
                child: CustomCatagories(images2: images2),
              ),

              20.verticalSpace,

              CustomText(text: "best Seller"),
              39.verticalSpace,
              CustomKitchenCart(),
              20.verticalSpace,
              CustomText(text: "New Collection"),
              10.verticalSpace,
              SizedBox(
                height:300,
               
                child: ListView.builder(
                  
                  
                  itemCount: images3.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 14),
                     child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(images3[index],width: 163,
                            height: 142,),
                            9.verticalSpace,
                            Text("Aluminum chair",style:AppStyle.subTilte15),
                            9.verticalSpace,
                            SizedBox(
                                  width: 170.w,
                                  
                              child: Text(
                                maxLines: 2,
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                style: AppStyle.typaragraph12,
                              ),
                            ),
                            18.verticalSpace,
                
                            Row(
                             
                              children: [
                                Text(
                                  r"$120.00",
                                  style: AppStyle.subTilte15.copyWith(
                                    color: AppColors.orangeBrown,
                                  ),
                                ),
                                50.horizontalSpace,
                
                                Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.addIcon),
                                    6.horizontalSpace,
                                    SvgPicture.asset(AppIcons.loveIcon),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
