import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_images.dart';
import 'package:first_task/core/helpers/app_route.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:first_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  static const _seenKey = 'onboarding_seen';
  final PageController controller = PageController();

  Future<void> setSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_seenKey, true);
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Confortable Space",
      "Modern Design",
      "Styled Living",
      "Relaxing Furniture",
    ];

    List<String> desc = [
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ];

    List<String> images = [
      AppImages.firstDecorOnboarding,
      AppImages.secondDecorOnboarding,
      AppImages.thirdDecorOnboarding,
      AppImages.fourthDecorOnboarding,
    ];

    List<String> buttonTexts = ["Next", "Next", "Next", "Get Started"];

    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: images.length,
      controller: controller,
      itemBuilder: (BuildContext context, int index) {
        return SafeArea(
          child: Column(
            children: [
              Container(
                height: 530.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(34.r),
                  ),
                  color: AppColors.iconSquarecolor,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        images[index],
                        width: 500.w,
                        height: 500.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    if (index < images.length - 1)
                      Positioned(
                        top: 28.r,
                        right: 0.r,
                        child: Row(
                          children: [
                            Text(
                              "Skip",
                              style: AppStyle.subtitle14.copyWith(
                                color: AppColors.mutedCocoa,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                await setSeen();
                                if (!mounted) return;
                                GoRouter.of(context).go('/home');
                              },
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 22.r,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  title[index],
                  style: AppStyle.title28.copyWith(color: AppColors.lightpink),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  desc[index],
                  textAlign: TextAlign.center,
                  style: AppStyle.subtitle14.copyWith(
                    color: AppColors.charcoalBrown,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    SmoothPageIndicator(
                      controller: controller,
                      count: images.length,
                      effect: const ExpandingDotsEffect(
                        dotWidth: 13,
                        dotHeight: 9,
                        dotColor: AppColors.iconSquarecolor,
                        activeDotColor: AppColors.lightpink,
                        expansionFactor: 4,
                        spacing: 7,
                      ),
                    ),
                    Spacer(flex: 4),
                    CustomButton(
                      width: 130.w,
                      height: 50.h,
                      color: AppColors.orangeBrown,
                      text: buttonTexts[index],
                      ontap: () async {
                        if (index < images.length - 1) {
                          controller.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          await setSeen();
                          if (!mounted) return;
                          GoRouter.of(context).push(AppRouter.kbottomnavbar);
                        }
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
