part of 'slider_cubit.dart';

abstract class SliderState {}

class MyInitail extends SliderState {}

class GetAllImages extends SliderState {
  final List<Data> allImages;

  GetAllImages(this.allImages);
}

