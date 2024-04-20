import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/image.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.onBoarding_1,
          height: 333.h,
          width: 333.w,
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          AppStrings.onBoardingTxt1,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
