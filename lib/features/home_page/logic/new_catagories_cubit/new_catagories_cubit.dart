
import 'package:first_task/features/home_page/data/repository/new_collection_repo.dart';
import 'package:first_task/features/home_page/logic/new_catagories_cubit/new_catagories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NewCatagoriesCubit extends Cubit<NewCatagoriesState> {
  final NewCollectionRepo newCollectionRepo;
  NewCatagoriesCubit(this.newCollectionRepo) : super(MyInitail());

  void emitGetNewCatagories() {
    newCollectionRepo.getAllNewCatagories().then((newCatagory) {
      emit(GetAllNewCatagories(newCatagory));
    });
  }
}
