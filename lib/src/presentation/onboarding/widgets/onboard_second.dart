import 'package:flutter/material.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/image.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          AppImages.onBoarding_2,
          height: screenHeight * 0.4,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          AppStrings.onBoardingTxt2,
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
