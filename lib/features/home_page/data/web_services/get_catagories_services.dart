import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/home_page/data/model/get_catagories_model.dart';
import 'package:retrofit/http.dart';

part 'get_catagories_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)
abstract class CatagoriesServices {
  factory CatagoriesServices(Dio dio, {String? baseUrl}) = _CatagoriesServices;


  @GET('categories')
   Future<GetCatagoriesModel> getCatagorisInfo();

}