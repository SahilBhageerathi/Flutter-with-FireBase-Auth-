import 'package:auto_route/auto_route.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:sample_1/src/core/constants/colors.dart';
import 'package:sample_1/src/presentation/screens/general/addPosts/add_posts_page.dart';
import 'package:sample_1/src/presentation/screens/general/categories/categories_page.dart';
import 'package:sample_1/src/presentation/screens/general/home/home_page.dart';
import 'package:sample_1/src/presentation/screens/general/profile/profile_page.dart';
import 'package:sample_1/src/presentation/screens/general/tags/tags_page.dart';

@RoutePage()
class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {

  static const List<TabItem> items = [
    TabItem(
      icon: FeatherIcons.home,
    ),
    TabItem(
      icon: FeatherIcons.tag,
    ),
    TabItem(
      icon: FeatherIcons.plus,
    ),
    TabItem(
      icon: FeatherIcons.hash,
    ),
    TabItem(
      icon: FeatherIcons.user,
    ),
  ];
  int visit = 0;
  List<Widget> pages=const [
    HomePage(),
    CategoriesPage(),
    AddPostPage(),
    TagsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:pages.elementAt(visit),
        backgroundColor: Colors.white,
        bottomNavigationBar:  BottomBarCreative(
          enableShadow: true,
          items:items,
          backgroundColor: Colors.white,
          color:AppColors.primaryColor.withOpacity(0.3),
          colorSelected: AppColors.primaryColor,
          indexSelected: visit,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
