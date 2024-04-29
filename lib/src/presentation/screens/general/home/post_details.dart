import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';

@RoutePage()
class PostDetailsPage extends StatelessWidget {
  const PostDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Netflix will charge money for password sharing",
          maxLines: 1,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            AppImages.netflixBanner1,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Text(
                  "Netflix will charge money for password sharing",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.eye,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "147 Views",
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                    const Spacer(),
                    const Icon(
                      FeatherIcons.thumbsUp,
                      color: Colors.green,
                    ),
                    Text(
                      "0",
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(
                      FeatherIcons.thumbsDown,
                      color: Colors.red,
                    ),
                    Text(
                      "0",
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                    "The sun cast long shadows across the deserted street as the day drew to a close. A gentle breeze rustled the leaves of the trees, creating a soothing melody. Birds chirped in the distance, their songs echoing through the tranquil evening air. A lone traveler made his way down the winding path, his footsteps echoing in the silence. The smell of freshly baked bread wafted from the nearby bakery, tempting passersby with its warm aroma. In the distance, the sound of laughter and music could be heard emanating from a bustling tavern, a beacon of life in the quiet town. Meanwhile, fluffy clouds drifted lazily across the sky, their shapes constantly morphing into whimsical forms. As twilight descended, the colors of the sky transformed into a mesmerizing display of oranges, pinks, and purples, painting the horizon with a breathtaking palette. The stars began to twinkle one by one, illuminating the darkening night with their soft glow. Far away, a distant rumble of thunder signaled the approaching storm, adding an element of excitement to the otherwise peaceful scene. Somewhere nearby, a cat meowed plaintively, seeking shelter from the impending rain. The streets grew empty as people hurried indoors, seeking refuge from the impending tempest. And so, as the night fell and the storm raged outside, the town settled into a cozy hush, enveloped in the comforting embrace of the night.",
                style: TextStyle(color: Colors.black),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
