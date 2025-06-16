import 'package:dio/dio.dart';
import 'package:first_task/core/helpers/app_constans.dart';
import 'package:first_task/features/home_page/data/model/slider_model.dart';
import 'package:retrofit/http.dart';

part 'slider_services.g.dart';
@RestApi(baseUrl:AppConstans.baseUrl)
abstract class SliderServices {
  factory SliderServices(Dio dio, {String? baseUrl}) = _SliderServices;


  @GET('slider')
   Future<Slider> getSliderImages();

// @GET('users/{id}')
//   Future<User> getUserById(@Path('id') int userId);



// @POST('users')
//   Future<User> createNewUser(@Body()User newUser, @Header('Authorization') String token);




// @DELETE('users/{id}')
//  Future<dynamic> deleteUserById(@Path('id') int userId, @Header('Authorization') String token);



   

}