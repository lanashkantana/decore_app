import 'package:first_task/core/helpers/app_images.dart';
import 'package:first_task/features/home_page/ui/widget/custom_specail_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewOffer extends StatefulWidget {
  const ListViewOffer({super.key});

  @override
  State<ListViewOffer> createState() => _ListViewOfferState();
}

class _ListViewOfferState extends State<ListViewOffer> {
  List<String> images = [
    AppImages.specialOfferHomePage,
    AppImages.specialOfferHomePage,
    AppImages.specialOfferHomePage,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 132.h,
          width: 200.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: CustomSpecailOfferitem(),
          ),
        );
      },
    );
  }
}
