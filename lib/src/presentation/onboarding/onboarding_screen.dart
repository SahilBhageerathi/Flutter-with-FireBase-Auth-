import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  OnBoardingViewModel onBoardViewModel=OnBoardingViewModel();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        children: [
          Image.asset(
            AppImages.appLogo,
            color: AppColors.primaryColor,
            height: screenHeight * 0.05,
            width: screenWidth * 0.36,
          ),
          SizedBox(
            height: screenHeight * 0.7,
            child: PageView(
              controller: onBoardViewModel.onBoardingPageController,
              children:const [
                OnBoardFirst(),
                OnBoardSecond(),
                OnBoardThird(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
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
          SizedBox(height: screenHeight*0.045),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppStrings.skipTxt,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              SmoothPageIndicator(
                  controller: onBoardViewModel.onBoardingPageController,  // PageController
                  count:  3,
                  effect: const  WormEffect(
                    activeDotColor: AppColors.primaryColor,
                    dotHeight: 12,
                    dotWidth: 12,
                  ),  // your preferred effect
                  onDotClicked: (index){}
              ),
              const Text(
                AppStrings.nextTxt,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          )
        ],
      )),
    );
  }
}
