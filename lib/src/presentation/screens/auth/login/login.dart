import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:sample_1/src/presentation/common_widgets/primary_button.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';
import 'package:sample_1/src/utils/validation.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey=GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        bloc: AuthBloc.instance,
        builder: (context, state) {
          if(state.isUserLoggedIn) {
            AutoRouter.of(context).push(
                const GeneralPageRoute());
          }

          return Scaffold(
            body: FadedScaleAnimation(
              fadeDuration: const Duration(seconds: 2),
              fadeCurve: Curves.ease,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Form(
                    key: formKey,
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
                            height: MediaQuery.sizeOf(context).height,
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
                                    height: 50.h,
                                  ),
                                  const Center(
                                    child: Text(
                                      AppStrings.loginText,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  TextFormField(
                                    controller: emailController,
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "This field can't be Empty";
                                      }
                                      else if(!value.isValidEmail){
                                        return "This is not a valid email";
                                      }
                                      return null;
                                    },
                                    style: const TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      prefixIcon:
                                          const Icon(Icons.mail_outline_rounded),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                        borderSide:
                                            const BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                        borderSide: const BorderSide(
                                            color: AppColors.primaryColor),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                        borderSide:
                                            const BorderSide(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  const Text(
                                    AppStrings.passwordText,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  TextFormField(
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "This field can't be Empty";
                                      }
                                      // else if(!value.isValidPassword){
                                      //   return "invalid";
                                      // }
                                      return null;
                                    },
                                    controller: passwordController,
                                    style: const TextStyle(color: Colors.black),
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.lock),
                                      suffixIcon: _obscureText
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _obscureText = false;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.visibility,
                                                color: Colors.grey,
                                              ),
                                            )
                                          : IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _obscureText = true;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.visibility_off,
                                                color: Colors.grey,
                                              ),
                                            ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          borderSide: const BorderSide(
                                              color: AppColors.primaryColor)),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          borderSide: const BorderSide(
                                              color: Colors.red)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              width: 2.0,
                                              color: AppColors
                                                  .primaryColor, // Change border color here
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
                                        onTap: () {
                                       },
                                        child:
                                        state.isLoading
                                            ? const CircularProgressIndicator(color: Colors.white,)
                                        :const Text(
                                          AppStrings.forgotPasswordText,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.primaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  SizedBox(
                                      width: 350.w,
                                      child: PrimaryButton(
                                          title: AppStrings.loginText,
                                          onPressed: () {
                                            if (formKey.currentState!=null && formKey.currentState!.validate()) {
                                              AuthBloc.instance.add(LoginEvent(
                                                email: emailController.text,
                                                password: passwordController.text,
                                              ));
                                            }
                                          })),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Center(
                                    child: RichText(
                                      text: TextSpan(children: [
                                        const TextSpan(
                                          text: AppStrings.dontHaveAccountText,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.primaryColor),
                                        ),
                                        TextSpan(
                                          text: AppStrings.signUpText,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.primaryColor),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              AutoRouter.of(context).replace(
                                                  const RegisterPageRoute());
                                            },
                                        )
                                      ]),
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
              ),
            ),
          );
        });
  }
}
