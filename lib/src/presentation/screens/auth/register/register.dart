import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/common_widgets/primary_button.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: AppColors.primaryColor,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    AppImages.appLogo,
                    width: 139.w,
                    height: 42.h,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height*0.85,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36.r),
                        topRight: Radius.circular(36.r)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        const Center(
                          child: Text(
                            AppStrings.registerText,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        const Text(
                          AppStrings.emailText,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextField(
                          controller: emailController,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: AppStrings.emailHintText,
                            hintStyle:const TextStyle(
                              color: Colors.grey
                            ),
                            prefixIcon: const Icon(Icons.mail_outline_rounded),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  const BorderSide(color: AppColors.primaryColor),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const Text(
                          AppStrings.passwordText,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextField(
                          controller: passwordController,
                          style: const TextStyle(color: Colors.black),
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: _obscureText
                                ? IconButton(
                              onPressed: (){
                                setState(() {
                                  _obscureText=false;
                                });
                              },
                              icon:const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                )
                                :IconButton(
                              onPressed: (){
                                setState(() {
                                  _obscureText=true;
                                });
        
                              },
                                  icon: const  Icon(
                                      Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryColor)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.red)),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const Text(
                          AppStrings.confirmPasswordText,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextField(
                          controller: confirmPasswordController,
                          style: const TextStyle(color: Colors.black),
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryColor)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.red)),
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (newValue) {
                                    setState(() {
                                      // _isChecked = newValue;
                                    });
                                  },
                                  activeColor: AppColors.primaryColor,
                                  checkColor: Colors.white,
                                  side: const BorderSide(
                                    width: 2.0, // Change border width here
                                    color: AppColors.primaryColor, // Change border color here
                                  ),
                                ),
                                const Text(
                                  AppStrings.rememberMeText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor),
                                ),
        
                              ],
                            ),
                            InkWell(
                              onTap: (){
                              },
                              child: const Text(
                                AppStrings.forgotPasswordText,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50.h,),
                        SizedBox(
                            width:350.w,
                            child: PrimaryButton(title: AppStrings.loginText, onPressed: (){})),
                        SizedBox(height: 20.h,),
                        Center(
                          child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: AppStrings.alreadyHaveAccountText,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.primaryColor),
                              ),
                               TextSpan(
                                text: AppStrings.loginText,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryColor),
                                 recognizer: TapGestureRecognizer()..onTap=(){
                                  AutoRouter.of(context).replace(const LoginPageRoute());
                                 },)
                            ]
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
