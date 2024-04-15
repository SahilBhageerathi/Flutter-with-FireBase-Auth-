import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/screens/phone_auth/login_screen_mobile.dart';


class HomeScreenForMobile extends StatefulWidget {
  final User user;

  const HomeScreenForMobile({super.key, required this.user});

  @override
  State<HomeScreenForMobile> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreenForMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('User Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  logOut(context);
                },
                icon: const Icon(
                  Icons.exit_to_app,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              "${widget.user.phoneNumber}\nis logged in",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
        ));
  }


  void logOut(context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> const LoginScreenWithMobile()));
  }
}
