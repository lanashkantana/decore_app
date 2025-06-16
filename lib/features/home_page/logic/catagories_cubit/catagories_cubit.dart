
import 'package:first_task/features/home_page/data/repository/catagories_repo.dart';
import 'package:first_task/features/home_page/logic/catagories_cubit/catagories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatagoriesCubit extends Cubit<CatagoriesState> {
  final CatagoriesRepo catagoriesRepo;
  CatagoriesCubit(this.catagoriesRepo) : super(MyInitail());

  void emitGetAllCatagories() {
    catagoriesRepo.getallCatagories().then((catagory) {
      emit(GetAllInfo(catagory));
    });
  }
}
