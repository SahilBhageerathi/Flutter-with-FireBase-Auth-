import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 8.w),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              // Adjust the radius as needed
              child: Image.asset(
                AppImages.netflixBanner1,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 24.h,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Posts",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 410.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          // Adjust the radius as needed
                          child: Image.asset(
                            AppImages.netflixBanner1,
                            width: 180.w,
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("line 1",style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w600),maxLines: 1,),
                            SizedBox(height: 6.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(FeatherIcons.clock,color: Colors.grey,),
                                SizedBox(width: 4.w,),
                                Text("6 months ago",style: TextStyle(color: Colors.grey,fontSize: 16.sp),)
                              ],
                            ),
                            SizedBox(height: 6.h,),
                            Row(
                              children: [
                                Text("60 Views",style: TextStyle(color: Colors.grey,fontSize: 16.sp),),
                                SizedBox(width: 30.w,),
                                const Icon(FeatherIcons.bookmark,color: Colors.grey,),
                              ],
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(height: 10.h,),
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
