
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:first_task/features/home_page/data/web_services/new_collection_services.dart';

class NewCollectionRepo {
  final NewCollectionServices newCollectionServices;

  NewCollectionRepo(this.newCollectionServices);

  Future<List<NewCollectionData>> getAllNewCatagories() async {

 final newcatagories = await newCollectionServices.getNewCollection(); 
  return newcatagories.data ?? []; 
  
  }

}