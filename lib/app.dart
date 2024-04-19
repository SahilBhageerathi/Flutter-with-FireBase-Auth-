import 'package:flutter/material.dart';
import 'package:sample_1/src/core/constants/app_strings.dart';
import 'package:sample_1/src/core/theme/theme.dart';
import 'package:sample_1/src/presentation/routing/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRoute=AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      themeMode: ThemeMode.system,
      theme:CustomAppTheme.lightTheme ,
      darkTheme: CustomAppTheme.darkTheme,
      routerConfig: _appRoute.config(),
    );
  }
}