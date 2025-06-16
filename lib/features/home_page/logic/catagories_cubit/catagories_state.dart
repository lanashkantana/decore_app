
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';

abstract class CatagoriesState {}

class MyInitail extends CatagoriesState {}

class GetAllInfo extends CatagoriesState {
  final List<GetCatagoriesData> allInfo;

  GetAllInfo(this.allInfo);
}
class SliderError extends CatagoriesState{}
