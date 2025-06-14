import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_icons.dart';
import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/core/widgets/custom_app_bar.dart';
import 'package:first_task/core/widgets/custom_button.dart';
import 'package:first_task/core/widgets/custom_text_field.dart';
import 'package:first_task/features/auth/widget/custom_navigator_bewtween_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userName = TextEditingController();

  final TextEditingController password = TextEditingController();

  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Log in",
      
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
        child: ListView(
          children: [
            Text(
              "Welcome",
              style: AppStyle.title20..copyWith(color: AppColors.charcoalBrown),
            ),
            11.verticalSpace,
            Text(
              "Please enter your details to proceed.",
              style: AppStyle.subtitle14.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            60.verticalSpace,
            Text(
              "Username or email",

              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: 'example@example.com',
              obscureText: false,
              controller: userName,
              keyboardType: TextInputType.text,
            ),
            23.verticalSpace,
            Text(
              "Password",
              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: '123456789',
              obscureText: isObscure,
              controller: password,
              keyboardType: TextInputType.text,
              suffixIcon: isObsecureIcon(isObscure),
            ),

            48.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: CustomButton(
                text: "Log in",
                ontap: () {},
                color: AppColors.orangeBrown,
              ),
            ),
            18.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap:(){
                  GoRouter.of(context).push(AppRouter.kForgetPassword);
                },
                child: Text(
                  "Forgot Password?",
                  style: AppStyle.subText14.copyWith(
                    color: AppColors.charcoalBrown,
                  ),
                ),
              ),
            ),
            120.verticalSpace,

            Align(
              alignment: Alignment.center,
              child: Text(
                " or sign up with",
                style: AppStyle.paragraph13.copyWith(
                  color: AppColors.charcoalBrown,
                ),
              ),
            ),
            19.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.facebookIcon),
                20.horizontalSpace,

                SvgPicture.asset(AppIcons.googleIcon),
              ],
            ),
            15.verticalSpace,

            navigatorBetweenAuth(
              title1: "Don't have an account? ",
              title2: "Sign Up",
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kRegisterPage);
              },
            ),
          ],
        ),
      ),
    );
  }

  IconButton isObsecureIcon(bool isObscure1) {
    return IconButton(
      icon: FaIcon(
        isObscure1 ? FontAwesomeIcons.eye : FontAwesomeIcons.solidEyeSlash,
      ),
      onPressed: () {
        setState(() {
          isObscure1 = !isObscure1;
        });
      },
    );
  }
}
