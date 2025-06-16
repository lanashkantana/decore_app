import 'package:bloc/bloc.dart';
import 'package:first_task/features/home_page/data/model/slider_model.dart';
import 'package:first_task/features/home_page/data/repository/slider_repo.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  final SliderRepo sliderRepo;
  SliderCubit(this.sliderRepo) : super(MyInitail());

  void emiteGetAllImages() {
    sliderRepo.getSliderImages().then((imagesList) {
      emit(GetAllImages(imagesList));
    });
  }
}
