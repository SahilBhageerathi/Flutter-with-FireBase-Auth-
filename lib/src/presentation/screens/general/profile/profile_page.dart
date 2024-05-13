import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:sample_1/src/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:sample_1/src/presentation/routing/router.gr.dart';

import '../../../blocs/auth_bloc/auth_bloc.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AuthBloc, AuthState>(
      bloc:AuthBloc.instance,
      builder: (context,state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.primaryColor,
            actions: [
              IconButton(
                  onPressed: () {
                    AuthBloc.instance.add(LogoutEvent(navigateCallback: (){
                      AutoRouter.of(context).push(const AuthPageRoute());
                    }));
                  },
                  icon: const Icon(
                    FeatherIcons.logOut,
                    color: Colors.white,
                  ))
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 380.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "UserName",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "email@email.com",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "The sun cast long shadows across the deserted street as the day drew to a close. A gentle breeze rustled the leaves of the trees, creating a soothing melody.",
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(fontSize: 20.sp),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 260.h,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  children: [
                    Text(
                      "My Posts",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    GridView.builder(
                        itemCount: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.w),
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                // Adjust the radius as needed
                                child: Image.asset(
                                  AppImages.netflixBanner1,
                                  width: 180.w,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:130.w,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 4.w),
                                      child: Text(
                                        "Netflix is hjgdfkjsdhfhskjdhfkjsdhkfhdskf",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FeatherIcons.moreVertical,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
