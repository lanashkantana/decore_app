import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/theming/theme_data_dark.dart';
import 'package:first_task/core/theming/theme_data_light.dart';
import 'package:first_task/features/onboarding_page/ui/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X size, adjust as needed
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
         return MaterialApp.router(
                    routerConfig: AppRouter.router,
                    debugShowCheckedModeBanner: false,
                    theme: getLightTheme(),
          darkTheme: getDarkTheme(),
          themeMode: ThemeMode.light,
      
        );
      },
      child:Onboarding(),
  
    );
  }
}
