import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/screens/email_auth/login_screen.dart';

class HomeScreen extends StatefulWidget {
  final User user;

 const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('User Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  logOut();
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
              "${widget.user.email}\nis logged in",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
        ));
  }


  void logOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> const LoginScreen()));
  }
}
