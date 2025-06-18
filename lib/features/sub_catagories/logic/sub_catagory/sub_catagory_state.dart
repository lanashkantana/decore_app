import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';

abstract class SubCatagoryState {}

class MyInitaill extends SubCatagoryState {}

class GetSubCatagoryById extends SubCatagoryState {
  final SubCatagoriesData getSubCatagoryById;

  GetSubCatagoryById(this.getSubCatagoryById);
}

class SubCatagoryError extends SubCatagoryState {
  final String message;

  SubCatagoryError(this.message);
}
