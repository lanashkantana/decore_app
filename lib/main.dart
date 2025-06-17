import 'package:first_task/core/depency_injection.dart';
import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/theming/theme_data_dark.dart';
import 'package:first_task/core/theming/theme_data_light.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_cubit.dart';
import 'package:first_task/features/home_page/logic/best_saller_cubit/best_saller_state.dart';
import 'package:first_task/features/home_page/logic/catagories_cubit/catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/new_catagories_cubit/new_catagories_cubit.dart';
import 'package:first_task/features/home_page/logic/slider_cubit/slider_cubit.dart';
import 'package:first_task/features/onboarding_page/ui/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<SliderCubit>()),
            BlocProvider(create: (_) => getIt<CatagoriesCubit>()),
            BlocProvider(create: (_) => getIt<NewCatagoriesCubit>()),
            BlocProvider(create: (_) => getIt<BestSallerCubit>()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: getLightTheme(),
            darkTheme: getDarkTheme(),
            themeMode: ThemeMode.light,
          ),
        );
      },
      child: const Onboarding(),
    );
  }
}
