import 'package:flutter/material.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/image.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          AppImages.onBoarding_1,
          height: screenHeight * 0.4,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          AppStrings.onBoardingTxt1,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
