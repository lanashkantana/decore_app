 import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';
import 'package:retrofit/http.dart';

part 'sub_catagories_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)

abstract class SubCatagoriesServices {
  factory SubCatagoriesServices(Dio dio, {String? baseUrl}) = _SubCatagoriesServices;

// @GET('sub-categories/{main_category_id}')
// Future<SubCatagoriesModel> getSubCatagoriesById(@Path('main_category_id') int mainCategoryId);

@GET('sub-categories')
Future<SubCatagoriesModel> getSubCatagoriesById(@Query('main_category_id') int mainCategoryId);





// @GET('users/{id}')
//   Future<User> getUserById(@Path('id') int userId);



// @POST('users')
//   Future<User> createNewUser(@Body()User newUser, @Header('Authorization') String token);




// @DELETE('users/{id}')
//  Future<dynamic> deleteUserById(@Path('id') int userId, @Header('Authorization') String token);




}