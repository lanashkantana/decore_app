import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/core/widgets/custom_app_bar.dart';
import 'package:first_task/core/widgets/custom_button.dart';
import 'package:first_task/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
 

  final TextEditingController password = TextEditingController();
 final TextEditingController confirmPassword = TextEditingController();
 
   late bool isObscure = true;
  late bool isObsecureFonfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Set Password",
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),

      body:  Padding(
  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 32),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "change the password",
          style: AppStyle.title20.copyWith(color: AppColors.charcoalBrown),
        ),
        11.verticalSpace,
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
          style: AppStyle.subtitle14.copyWith(color: AppColors.charcoalBrown),
        ),
        60.verticalSpace,
        Text("Password", style: AppStyle.subTilte15.copyWith(color: AppColors.charcoalBrown)),
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
        Text("Confirm Password", style: AppStyle.subTilte15.copyWith(color: AppColors.charcoalBrown)),
        8.verticalSpace,
        CustomFormTextField(
          fillColor: AppColors.iconSquarecolor,
          hintText: '123456789',
          obscureText: isObsecureFonfirm,
          controller: confirmPassword,
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: isObsecureIcon(isConfirm: true),
        ),
        33.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75),
          child: CustomButton(
            text: "Set Password",
            ontap: () {
              GoRouter.of(context).push(AppRouter.kbottomnavbar);
            },
            color: AppColors.orangeBrown,
          ),
        ),
        18.verticalSpace,
        // Align(
        //   alignment: Alignment.center,
        //   child: InkWell(
        //     onTap: () {
        //       GoRouter.of(context).push(AppRouter.kForgetPassword);
        //     },
        //     child: Text("Back", style: AppStyle.subtitle14),
        //   ),
        // ),
      ],
    ),
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
