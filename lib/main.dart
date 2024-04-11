import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/firebase_options.dart';
import 'package:sample_1/screens/email_auth/login_screen.dart';
import 'package:sample_1/screens/phone_auth/home.dart';
import 'package:sample_1/screens/phone_auth/login_screen_mobile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:(FirebaseAuth.instance.currentUser==null)? const LoginScreenWithMobile():HomeScreenForMobile(user: FirebaseAuth.instance.currentUser!),

        ///For Email
      // (FirebaseAuth.instance.currentUser==null)? const LoginScreen():HomeScreen(user: FirebaseAuth.instance.currentUser!),
    );
  }
}


