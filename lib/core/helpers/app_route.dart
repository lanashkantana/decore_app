import 'package:first_task/features/auth/forget_password/forget_password.dart';
import 'package:first_task/features/auth/forget_password/set_password.dart';
import 'package:first_task/features/auth/login_page/ui/login_page.dart';
import 'package:first_task/features/auth/register_page/ui/register_page.dart';
import 'package:first_task/features/bottom_nav_baar.dart';
import 'package:first_task/features/home_page/ui/home_page.dart';
import 'package:first_task/features/onboarding_page/ui/on_boarding_page.dart';
import 'package:first_task/features/splash_screen/ui/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  
  static const kOnBoardingScreen = '/kOnBoardingScreen';
  static const kloginPage = '/kloginPage';
  static const kRegisterPage = '/kRegisterPage';
  static const kForgetPassword = '/kForgetPassword';
  static const kSetPassword = '/kSetPassword';
  static const kHomePage = '/kHomePage';
  static const kbottomnavbar = '/kbottomnavbar';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplachView()),
    
      GoRoute(
        path: kOnBoardingScreen,
        builder: (context, state) => const Onboarding(),
      ),
      GoRoute(
        path: kloginPage,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: kRegisterPage,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: kForgetPassword,
        builder: (context, state) => const ForgetPassword(),
      ),
      GoRoute(
        path: kSetPassword,
        builder: (context, state) => const SetPassword(),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kbottomnavbar,
        builder: (context, state) =>  BottomNavBar(),
      ),

    ],
  );
}
