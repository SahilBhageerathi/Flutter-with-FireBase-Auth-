import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/screens/phone_auth/verify_Otp_screen.dart';

class LoginScreenWithMobile extends StatefulWidget {
  const LoginScreenWithMobile({super.key});

  @override
  State<LoginScreenWithMobile> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreenWithMobile> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login Screen',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneNumberController,
                decoration: const InputDecoration(labelText: "Mobile Number"),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                color: Colors.blue,
                onPressed: () {
                  sendOtp();
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }

  void sendOtp() async {
    String phoneNumber = "+91${phoneNumberController.text.trim()}";
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      codeSent: (verificationId, resendToken) {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => VerifyOtp(verificationId: verificationId,)));
      },
      verificationCompleted: (credential) {},
      verificationFailed: (ex) {
        log(ex.code.toString());
      },
      codeAutoRetrievalTimeout: (verificationId) {},
      timeout: const Duration(seconds: 30),
    );
  }
}
