
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';

abstract class NewCatagoriesState {}

class MyInitail extends NewCatagoriesState {}

class GetAllNewCatagories extends NewCatagoriesState {
  final List<NewCollectionData> getAllNewCatagories;

  GetAllNewCatagories(this.getAllNewCatagories);
}

