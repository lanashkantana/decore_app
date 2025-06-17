
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';

abstract class BestSallerState {}

class MyInitaill extends BestSallerState {}

class GetAllBestSaller extends BestSallerState {
  final List<NewCollectionData> getBestSaller;

  GetAllBestSaller(this.getBestSaller);
}

