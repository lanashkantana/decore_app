import 'package:dio/dio.dart';
import 'package:first_task/features/home_page/data/repository/best_saller_repo.dart';
import 'package:first_task/features/home_page/data/repository/catagories_repo.dart';
import 'package:first_task/features/home_page/data/repository/new_collection_repo.dart';
import 'package:first_task/features/home_page/data/repository/slider_repo.dart';
import 'package:first_task/features/home_page/data/web_services/best_saller_services.dart';
import 'package:first_task/features/home_page/data/web_services/get_catagories_services.dart';
import 'package:first_task/features/home_page/data/web_services/new_collection_services.dart';
import 'package:first_task/features/home_page/data/web_services/slider_services.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_cubit.dart';
import 'package:first_task/features/home_page/logic/catagories_cubit/catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/new_catagories_cubit/new_catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/slider_cubit/slider_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<SliderCubit>(()=>SliderCubit(getIt()));
  getIt.registerLazySingleton<SliderRepo>(()=>SliderRepo(getIt()));
  getIt.registerLazySingleton<SliderServices>(()=>SliderServices(createAndSeetupDio()));
///////////////////////////
 getIt.registerLazySingleton<CatagoriesCubit>(()=>CatagoriesCubit(getIt()));
  getIt.registerLazySingleton<CatagoriesRepo>(()=>CatagoriesRepo(getIt()));
  
 getIt.registerLazySingleton<CatagoriesServices>(()=>CatagoriesServices(createAndSeetupDio()));
//  //////////////////////////////////
 getIt.registerLazySingleton<BestSallerCubit>(()=>BestSallerCubit(getIt()));
  getIt.registerLazySingleton<BestSallerRepo>(()=>BestSallerRepo(getIt()));
    getIt.registerLazySingleton<BestSallerServices>(()=>BestSallerServices(createAndSeetupDio()));
// ///////////////
 getIt.registerLazySingleton<NewCatagoriesCubit>(()=>NewCatagoriesCubit(getIt()));
  getIt.registerLazySingleton<NewCollectionRepo>(()=>NewCollectionRepo(getIt()));
  
 getIt.registerLazySingleton<NewCollectionServices>(()=>NewCollectionServices(createAndSeetupDio()));

}
Dio createAndSeetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = Duration(seconds: 40)
    ..options.receiveTimeout = Duration(seconds: 70);
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestBody: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
    ),
  );
  return dio;
}
