 import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:retrofit/http.dart';

part 'best_saller_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)

abstract class BestSallerServices {
  factory BestSallerServices(Dio dio, {String? baseUrl}) = _BestSallerServices;

 @GET('best-seller')
   Future<NewCollectionModel> getBestSaler();
}