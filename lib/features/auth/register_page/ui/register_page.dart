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

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController dop = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  late bool isObscure = true;
  late bool isObsecureFonfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Create Account",
        onPressed: () {
          context.pop();
        },
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
        child: ListView(
          children: [
            Text(
              "Full Name",

              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: 'lana shkantana',
              obscureText: false,
              controller: userName,
              keyboardType: TextInputType.text,
            ),
            23.verticalSpace,
            Text(
              "Email",

              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: 'example@example.com',
              obscureText: false,
              controller: email,
              keyboardType: TextInputType.emailAddress,
            ),
            23.verticalSpace,
            Text(
              "Mobile Number",

              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: '+123 465 789',
              obscureText: false,
              controller: mobileNumber,
              keyboardType: TextInputType.number,
            ),
            23.verticalSpace,
            Text(
              "Date of birth",

              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: 'DD/MM/YYY',
              obscureText: false,
              controller: dop,
              keyboardType: TextInputType.datetime,
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
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: isObsecureIcon(isConfirm: false),
            ),
            23.verticalSpace,
            Text(
              "Confirm Password",
              style: AppStyle.subTilte15.copyWith(
                color: AppColors.charcoalBrown,
              ),
            ),
            8.verticalSpace,
            CustomFormTextField(
              fillColor: AppColors.iconSquarecolor,
              hintText: '123456789',
              obscureText: isObsecureFonfirm,
              controller: confirmPassword,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: isObsecureIcon(isConfirm: true),
            ),

            48.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: CustomButton(
                text: "Sign Up",
                ontap: () {},
                color: AppColors.orangeBrown,
              ),
            ),
            18.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: "By continuing, you agree to\n",
                    style: AppStyle.subText14.copyWith(
                      color: AppColors.mutedCocoa,
                    ),
                    children: [
                      TextSpan(
                        text: "Terms of Use",
                        style: AppStyle.subText14.copyWith(
                          color: AppColors.color391,
                        ),
                      ),
                      TextSpan(
                        text: " and ",
                        style: AppStyle.paragraph13.copyWith(
                          color: AppColors.mutedCocoa,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: AppStyle.paragraph13.copyWith(
                          color: AppColors.color391,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            18.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: Text(
                " or sign in with",
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
              title1: "Already have an account?",
              title2: "Log in",

              onPressed: () {
                GoRouter.of(context).push(AppRouter.kloginPage);
              },
            ),
          ],
        ),
      ),
    );
  }

  IconButton isObsecureIcon({required bool isConfirm}) {
    return IconButton(
      icon: FaIcon(
        (isConfirm ? isObsecureFonfirm : isObscure)
            ? FontAwesomeIcons.solidEyeSlash
            : FontAwesomeIcons.eye,
      ),
      onPressed: () {
        setState(() {
          if (isConfirm) {
            isObsecureFonfirm = !isObsecureFonfirm;
          } else {
            isObscure = !isObscure;
          }
        });
      },
    );
  }
}
