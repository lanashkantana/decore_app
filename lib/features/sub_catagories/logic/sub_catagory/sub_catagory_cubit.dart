import 'package:first_task/features/sub_catagories/data/repository/sub_catagory_repo.dart';
import 'package:first_task/features/sub_catagories/logic/sub_catagory/sub_catagory_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCatagoryCubit extends Cubit<SubCatagoryState> {
  final SubCatagoryRepo subCatagoryRepo;

  SubCatagoryCubit(this.subCatagoryRepo) : super(MyInitaill());

  void emitGetSubCatagoryById(int mainCategoryId) {
    subCatagoryRepo.getSubCatagoriesById(mainCategoryId).then((catagory) {
      emit(GetSubCatagoryById(catagory)); // ✅ كائن مفرد يتم تمريره للحالة
    }).catchError((error) {
      emit(SubCatagoryError(error.toString()));
    });
  }
}
