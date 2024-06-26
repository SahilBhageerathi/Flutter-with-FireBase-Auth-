import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.plus,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder:(context, int index) =>SizedBox(height: 20.h,),
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index+1}.",style: TextStyle(fontSize: 20.sp,color: Colors.black),),
            title: Text("Title",style: TextStyle(fontSize: 20.sp,color: Colors.black),),
            trailing: SizedBox(
              width: 120.w,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.edit2,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.trash,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
