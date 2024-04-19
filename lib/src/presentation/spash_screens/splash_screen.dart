import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';

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
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: FadedScaleAnimation(
          fadeDuration: const Duration(seconds: 2),
          child: Image.asset(AppImages.appLogo,
          height: screenHeight*0.05,
            width: screenWidth*0.36,
          ),
        ),
      ),
    );
  }
  
  moveToOnboard()async{
    await Future.delayed(const Duration(seconds: 4),(){
      AutoRouter.of(context).push(const OnBoardingScreenRoute());
    });
  }
}
