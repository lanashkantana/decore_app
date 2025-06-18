 import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/sub_catagories/data/model/sub_catagories_model.dart';
import 'package:retrofit/http.dart';

part 'sub_catagory_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)

abstract class SubCatagoryServices {
  factory SubCatagoryServices(Dio dio, {String? baseUrl}) = _SubCatagoryServices;

@GET('sub-categories/{id}')
Future<SubCatagoriesData> getSubCatagoryById(@Path('id') int id);


// @GET('users/{id}')
//   Future<User> getUserById(@Path('id') int userId);



// @POST('users')
//   Future<User> createNewUser(@Body()User newUser, @Header('Authorization') String token);




// @DELETE('users/{id}')
//  Future<dynamic> deleteUserById(@Path('id') int userId, @Header('Authorization') String token);




}