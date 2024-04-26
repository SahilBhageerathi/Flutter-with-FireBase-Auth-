import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("AddPostPage"),);
  }
}
