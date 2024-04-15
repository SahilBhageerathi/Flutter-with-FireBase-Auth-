import 'package:flutter/material.dart';
import 'package:sample_1/src/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Application',
      themeMode: ThemeMode.system,
      theme:CustomAppTheme.lightTheme ,
      darkTheme: CustomAppTheme.darkTheme,
    );
  }
}