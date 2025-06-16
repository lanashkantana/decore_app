
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';
import 'package:first_task/features/home_page/data/web_services/get_catagories_services.dart';

class CatagoriesRepo {
  final CatagoriesServices catagoriesServices;

  CatagoriesRepo(this.catagoriesServices);

  Future<List<GetCatagoriesData>> getallCatagories() async {

 final catagories = await catagoriesServices.getCatagorisInfo(); 
  return catagories.data ?? []; 
  
  }

}