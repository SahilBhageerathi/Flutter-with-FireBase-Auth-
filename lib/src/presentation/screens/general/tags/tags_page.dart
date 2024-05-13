import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/presentation/blocs/tags_bloc/tags_bloc.dart';
import 'package:sample_1/src/presentation/blocs/tags_bloc/tags_event.dart';
import 'package:sample_1/src/presentation/blocs/tags_bloc/tags_state.dart';

@RoutePage()
class TagsPage extends StatefulWidget {
  const TagsPage({super.key});

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage> {
  @override
  void initState() {
    super.initState();
    TagsBloc.instance.add(InitializeTagsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagsBloc,TagsState>(
      bloc: TagsBloc.instance,
      builder: (context,state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator(color: Colors.blue,strokeWidth: 10,))
            : Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "Tags",
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
          body:state.tags!.isNotEmpty
              ? ListView.separated(
            separatorBuilder:(context, int index) =>SizedBox(height: 20.h,),
            itemCount: state.tags!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${index+1}.",style: TextStyle(fontSize: 20.sp,color: Colors.black),),
                title: Text(state.tags![index].title,style: TextStyle(fontSize: 20.sp,color: Colors.black),),
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
          )
              :const SizedBox(),
        );
      }
    );
  }
}
