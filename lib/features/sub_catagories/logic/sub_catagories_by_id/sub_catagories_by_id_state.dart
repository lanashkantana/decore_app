
import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';

abstract class SubCatagoriesByIdState {}

class MyInitail extends SubCatagoriesByIdState {}

class GetSubCatagoriesById extends SubCatagoriesByIdState {
  final List<SubCatagoriesData> getSubCatagoriesById;

  GetSubCatagoriesById(this.getSubCatagoriesById);
}

