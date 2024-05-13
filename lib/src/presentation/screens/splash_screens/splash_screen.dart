import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';
import 'package:sample_1/src/utils/shared_preference.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToOnboard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: FadedScaleAnimation(
          fadeDuration: const Duration(seconds: 2),
          child: Image.asset(
            AppImages.appLogo,
            height: 42.h,
            width: 139.w,
          ),
        ),
      ),
    );
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 4), ()async {
      String token=await SharedPreferenceData.getToken();
      if(token.isEmpty){
        AutoRouter.of(context).push(const OnBoardingScreenRoute());
      }
      else{
        AutoRouter.of(context).push(const GeneralPageRoute());
      }

    });
  }
}
