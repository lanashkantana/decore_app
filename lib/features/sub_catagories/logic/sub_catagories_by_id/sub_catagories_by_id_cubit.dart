
import 'package:first_task/features/sub_catagories/data/repository/sub_catagories_repo.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagories_by_id/sub_catagories_by_id_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SubCatagoriesByIdCubit extends Cubit<SubCatagoriesByIdState> {
  final SubCatagoriesRepo subCatagoriesRepo;

  SubCatagoriesByIdCubit(this.subCatagoriesRepo) : super(MyInitail());

  void emitGetSubCatagoriesById(int mainCategoryId) {
    subCatagoriesRepo.getSubCatagoriesById(mainCategoryId).then((getSubCatagoriesById) {
      emit(GetSubCatagoriesById(getSubCatagoriesById));
    });
  }
}
