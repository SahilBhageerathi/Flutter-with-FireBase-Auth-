import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/common_widgets/outlined_button.dart';
import 'package:sample_1/src/presentation/common_widgets/primary_button.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return FadedScaleAnimation(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w,),
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(AppImages.authBg),
        //   ),
        // ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.appLogo,
                    width: 139.w,
                    height: 42.h,
                  ),
                ),
                const Spacer(),
                Text(
                  AppStrings.authText,
                  style:
                      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                  width: 350.w,
                  child: PrimaryButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const LoginPageRoute());
                    },
                    title:AppStrings.loginText,
                  ),
                ),
                SizedBox(height: 12.h,),
                Padding(
                  padding: EdgeInsets.only(bottom: 120.h),
                  child: SizedBox(
                    width: 350.w,
                    child:OutlineButton(
                      onPressed: (){
                        AutoRouter.of(context).push(const RegisterPageRoute());
                      },
                      title: AppStrings.registerText,
                    ),
                  ),
                ),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
