
import 'package:first_task/features/home_page/data/repository/best_saller_repo.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BestSallerCubit extends Cubit<BestSallerState> {
  final BestSallerRepo bestSallerRepo;
  BestSallerCubit(this.bestSallerRepo) : super(MyInitaill());

  void emitGetAllBestSaller() {
    bestSallerRepo.getBestSaler().then((bestSaller) {
      emit(GetAllBestSaller(bestSaller));
    });
  }
}
