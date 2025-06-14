import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarouselSlider extends StatelessWidget {
  final List<String> images;
  final CarouselSliderController carouselSliderController;
  final Function(int, CarouselPageChangedReason) onPageChanged;

  const CustomCarouselSlider({
    super.key,
    required this.images,
    required this.carouselSliderController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselSliderController,
      options: CarouselOptions(
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        aspectRatio: 22 / 9,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        scrollDirection: Axis.horizontal,
        onPageChanged: onPageChanged,
      ),
      items: images.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: double.infinity,
              child: Image.asset(imagePath, fit: BoxFit.fill),
            );
          },
        );
      }).toList(),
    );
  }
}
