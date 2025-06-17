import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/home_page/data/model/new_collection_model.dart';
import 'package:retrofit/http.dart';

part 'new_collection_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)

abstract class NewCollectionServices {
  factory NewCollectionServices(Dio dio, {String? baseUrl}) = _NewCollectionServices;


  @GET('new')
   Future<NewCollectionModel> getNewCollection();



 




}