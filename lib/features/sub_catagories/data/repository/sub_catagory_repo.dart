import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';
import 'package:first_task/features/sub_catagories/data/services/sub_catagory_services.dart';

class SubCatagoryRepo {
  final SubCatagoryServices subCatagoryServices;

  SubCatagoryRepo(this.subCatagoryServices);

  Future<SubCatagoriesData> getSubCatagoriesById(int mainCategoryId) async {
    final subCatagory = await subCatagoryServices.getSubCatagoryById(mainCategoryId);
    return subCatagory; // ✅ كائن مفرد
  }
}
