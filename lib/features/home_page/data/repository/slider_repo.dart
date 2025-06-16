import 'package:first_task/features/home_page/data/model/slider_model.dart';
import 'package:first_task/features/home_page/data/web_services/slider_services.dart';

class SliderRepo {
  final SliderServices sliderServices;

  SliderRepo(this.sliderServices);

  Future<List<Data>> getSliderImages() async {

 final slider = await sliderServices.getSliderImages(); // ✅ هذا يرجع كائن Slider
  return slider.data ?? []; // ✅ نستخرج List<Data> من الـ data
  
  }







//  Future<User> getUserById(int userId) async {
//     // var response = await webServices.getUserById(userId);
//     // return User.fromJson(response.toJson());
//     return await webServices.getUserById(userId);
//   }


// //post create ner user
//  Future<User> createNewUser(User newUser) async {
//     // var response = await webServices.getUserById(userId);
//     // return User.fromJson(response.toJson());
//     return await webServices.createNewUser(newUser, 'Bearer b941528fea8ec8ceb3207345f0f915957ee5a42eed528789db9fc548497b1b82');
//   }



// //delete user by id

//  Future<dynamic> deleteUserById(int userId) async {
  
//     return await webServices.deleteUserById(userId, 'Bearer b941528fea8ec8ceb3207345f0f915957ee5a42eed528789db9fc548497b1b82');
//   }

}
