import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/app.dart';
import 'package:sample_1/firebase_options.dart';
import 'package:sample_1/screens/auto_routing/router/routes.dart';
import 'package:sample_1/screens/auto_routing/temp_screens/route_screen_1.dart';
import 'package:sample_1/screens/email_auth/login_screen.dart';
import 'package:sample_1/screens/phone_auth/home.dart';
import 'package:sample_1/screens/phone_auth/login_screen_mobile.dart';


void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp( App());
  // runApp(Test());
}

// class Test extends StatelessWidget {
//    Test({super.key});
//
//   final _appRoute=AppRouter();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       title: 'Testing new Concepts',
//       // home: RouteScreen1(),
//       routerConfig: _appRoute.config(),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ecommerce Application',
//       themeMode: ThemeMode.system,
//       theme:CustomAppTheme.lightTheme ,
//       darkTheme: CustomAppTheme.darkTheme,
//
//
//       // (FirebaseAuth.instance.currentUser==null)? const LoginScreenWithMobile():HomeScreenForMobile(user: FirebaseAuth.instance.currentUser!),
//       // (FirebaseAuth.instance.currentUser==null)? const LoginScreen():HomeScreen(user: FirebaseAuth.instance.currentUser!),
//     );
//   }
// }


