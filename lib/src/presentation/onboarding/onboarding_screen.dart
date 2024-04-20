import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/onboarding/onboarding_view_model.dart';
import 'package:sample_1/src/presentation/onboarding/widgets/onboard_first.dart';
import 'package:sample_1/src/presentation/onboarding/widgets/onboard_second.dart';
import 'package:sample_1/src/presentation/onboarding/widgets/onboard_third.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnBoardingViewModel onBoardViewModel = OnBoardingViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.appLogo,
                  color: AppColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                SizedBox(
                  height: 63.h,
                ),
                Expanded(
                  child: PageView(
                    controller: onBoardViewModel.onBoardingPageController,
                    children: const [
                      OnBoardFirst(),
                      OnBoardSecond(),
                      OnBoardThird(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 61.h,
                ),
                SizedBox(
                  width:350.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      AppStrings.getStartedBtnTxt,
                    ),
                  ),
                ),
                SizedBox(
                  height: 61.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.skipTxt,
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                    SmoothPageIndicator(
                        controller: onBoardViewModel.onBoardingPageController,
                        // PageController
                        count: 3,
                        effect: const WormEffect(
                          activeDotColor: AppColors.primaryColor,
                          dotHeight: 12,
                          dotWidth: 12,
                        ),
                        // your preferred effect
                        onDotClicked: (index) {}),
                    Text(
                      AppStrings.nextTxt,
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
