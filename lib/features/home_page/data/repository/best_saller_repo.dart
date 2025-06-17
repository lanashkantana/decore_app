
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:first_task/features/home_page/data/web_services/best_saller_services.dart';
import 'package:first_task/features/home_page/data/web_services/new_collection_services.dart';

class BestSallerRepo {
  final BestSallerServices bestSaller;

  BestSallerRepo(this.bestSaller);

  Future<List<NewCollectionData>> getBestSaler() async {

 final bestSaler = await bestSaller.getBestSaler(); 
  return bestSaler.data ?? []; 
  
  }

}