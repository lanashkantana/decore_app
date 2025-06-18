
import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';
import 'package:first_task/features/sub_catagories/data/services/sub_catagories_services.dart';

class SubCatagoriesRepo {
  final SubCatagoriesServices subCatagoriesServices;

  SubCatagoriesRepo(this.subCatagoriesServices);

  Future<List<SubCatagoriesData>> getSubCatagoriesById(int mainCategoryId) async {
    final  subCatagories = await subCatagoriesServices.getSubCatagoriesById(mainCategoryId);
    return subCatagories.data ?? <SubCatagoriesData>[];

  }


}