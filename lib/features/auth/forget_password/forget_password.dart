import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/core/widgets/custom_app_bar.dart';
import 'package:first_task/core/widgets/custom_button.dart';
import 'package:first_task/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController userName = TextEditingController();

  final TextEditingController password = TextEditingController();

  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "forgot Password",
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, ),
              child: Text(
                "Reset Password?",
                style: AppStyle.title20..copyWith(color: AppColors.charcoalBrown),
              ),
            ),
            11.verticalSpace,
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 32, ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                style: AppStyle.subtitle14.copyWith(
                  color: AppColors.charcoalBrown,
                ),
              ),
            ),
            60.verticalSpace,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.iconSquarecolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(31.r),
                    topRight: Radius.circular(31.r),
                  ),
                ),
                child: ListView(
                 physics: NeverScrollableScrollPhysics(),
                  children: [
                    50.verticalSpace,
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        "Enter your email address",
                      
                        style: AppStyle.subTilte15.copyWith(
                          color: AppColors.charcoalBrown,
                        ),
                      ),
                    ),
                    8.verticalSpace,
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 32, ),
                      child: CustomFormTextField(
                        fillColor: AppColors.white,
                        hintText: 'example@example.com',
                        obscureText: false,
                        controller: userName,
                        keyboardType: TextInputType.text,
                        colortext: AppColors.colordcb,
                      ),
                    ),

                    33.verticalSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 107),
                      child: CustomButton(
                        text: "Next",
                        ontap: () {
                          GoRouter.of(context).push(AppRouter.kSetPassword);
                        },
                        color: AppColors.orangeBrown,
                      ),
                    ),
                    18.verticalSpace,
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kForgetPassword);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
