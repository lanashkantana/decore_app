import 'package:first_task/core/helpers/app_images.dart';
import 'package:flutter/material.dart';

class CustomSpecailOfferitem extends StatefulWidget {
  const CustomSpecailOfferitem({super.key});

  @override
  State<CustomSpecailOfferitem> createState() => _CustomSpecailOfferitemState();
}

class _CustomSpecailOfferitemState extends State<CustomSpecailOfferitem> {
  //   List<String> images = [
  //   AppImages.specialOfferHomePage,
  //   AppImages.specialOfferHomePage,
  //   AppImages.specialOfferHomePage,
  // ];
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio:4/8,
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Image.asset(AppImages.specialOfferHomePage, fit: BoxFit.fill,),
      ),
    );
  }
}