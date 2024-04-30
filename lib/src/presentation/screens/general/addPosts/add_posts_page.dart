import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/core/constants/image.dart';

@RoutePage()
class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  QuillController descController = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: const Text("Add posts"),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.check,color: Colors.white,))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView(
          children: [
            SizedBox(height: 10.h,),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    AppImages.netflixBanner1,
                  ),
                ),
                Positioned(
                    child:Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(FeatherIcons.camera,color:AppColors.primaryColor,),)))
              ],
            ),
            SizedBox(height: 10.h,),
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: Colors.blueGrey,fontSize: 16.sp),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                    const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                        color: AppColors.primaryColor)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                    const BorderSide(color: Colors.red)),
              ),
            ),
            SizedBox(height: 10.h,),
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Slug",
                hintStyle: TextStyle(color: Colors.blueGrey,fontSize: 16.sp),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                    const BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                        color: AppColors.primaryColor)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                    const BorderSide(color: Colors.red)),
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  const Text("Tags",style: TextStyle(color: Colors.blueGrey),),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_right_sharp,color: Colors.blueGrey,))
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  const Text("Categories",style: TextStyle(color: Colors.blueGrey),),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_right_sharp,color: Colors.blueGrey,))
                ],
              ),
            ),
            QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                controller: descController,
                sharedConfigurations: const QuillSharedConfigurations(
                  locale: Locale('de'),
                ),
              ),
            ),
            Expanded(
              child: QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  // customStyles: DefaultStyles(color: Colors.black),

                  controller: descController,
                  readOnly: false,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextStyle {
  TextStyle getTextStyle() {
    return const TextStyle(
      fontSize: 16,
      color: Colors.black, // Set your desired default text color here
    );
  }
}
