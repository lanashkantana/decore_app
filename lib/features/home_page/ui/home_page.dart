import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:first_task/features/home_page/data/model/slider_model.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_cubit.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_state.dart';
import 'package:first_task/features/home_page/logic/catagories_cubit/catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/catagories_cubit/catagories_state.dart';
import 'package:first_task/features/home_page/logic/new_catagories_cubit/new_catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/new_catagories_cubit/new_catagories_state.dart';
import 'package:first_task/features/home_page/logic/slider_cubit/slider_cubit.dart';
import 'package:first_task/features/home_page/ui/widget/custom_animated_smooth_indector.dart';
import 'package:first_task/features/home_page/ui/widget/custom_catagories.dart';
import 'package:first_task/features/home_page/ui/widget/custom_kitchen_cart.dart';
import 'package:first_task/features/home_page/ui/widget/custom_smooth_indector.dart';
import 'package:first_task/features/home_page/ui/widget/custom_text.dart';
import 'package:first_task/features/home_page/ui/widget/custom_welcome.dart';
import 'package:first_task/features/home_page/ui/widget/new_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SliderCubit>(context).emiteGetAllImages();
    BlocProvider.of<CatagoriesCubit>(context).emitGetAllCatagories();
    BlocProvider.of<NewCatagoriesCubit>(context).emitGetNewCatagories();
     BlocProvider.of<BestSallerCubit>(context).emitGetAllBestSaller();
  }

  List<Data> getImages = [];
  List<GetCatagoriesData> getCatagoriesInfo = [];
  List<NewCollectionData> getNewCatagories = [];
List<NewCollectionData> gestBestSaller = [];

  int currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  

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

              BlocBuilder<SliderCubit, SliderState>(
                builder: (context, state) {
                  if (state is GetAllImages) {
                    // bool isLoading = state is! GetAllImages;
                    getImages = (state).allImages;

                    return CustomCarouselSlider(
                      images: getImages.map((e) => e.image!).toList(),
                      carouselSliderController: _carouselController,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),

              20.verticalSpace,
              CustomSmoothIndicator(
                activeIndex: currentIndex,
                count: getImages.length,
                onDotClicked: (index) {
                  _carouselController.animateToPage(index);
                },
              ),
              20.verticalSpace,

              CustomText(text: "Categories"),

              20.verticalSpace,
              BlocBuilder<CatagoriesCubit, CatagoriesState>(
                builder: (context, state) {
                  if (state is GetAllInfo) {
                    getCatagoriesInfo = state.allInfo;
                    return SizedBox(
                      height: 100.h,
                      width: double.infinity,
                      child: CustomCatagories(data: getCatagoriesInfo),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),

              20.verticalSpace,
              CustomText(text: "best Seller"),
              39.verticalSpace,
             

                

               SizedBox(
                height: 180,
                // width: 200,
                 child: BlocBuilder<BestSallerCubit, BestSallerState>(
                    builder: (context, state) {
                      if (state is GetAllBestSaller) {
                        gestBestSaller = state.getBestSaller;
                 
                        return CustomKitchenCart(data: gestBestSaller);
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
               ),
             








              20.verticalSpace,
              CustomText(text: "New Collection"),
              10.verticalSpace,
              SizedBox(
                height: 265.h,

                child: BlocBuilder<NewCatagoriesCubit, NewCatagoriesState>(
                  builder: (context, state) {
                    if (state is GetAllNewCatagories) {
                      getNewCatagories = state.getAllNewCatagories;

                      return NewCollection(data: getNewCatagories);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
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
