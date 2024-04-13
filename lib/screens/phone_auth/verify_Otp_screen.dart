import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/screens/phone_auth/home.dart';


class VerifyOtp extends StatefulWidget {
  final String verificationId;
  const VerifyOtp({super.key, required this.verificationId});

  @override
  State<VerifyOtp> createState() => _VerifyOtp();
}

class _VerifyOtp extends State<VerifyOtp> {
  TextEditingController otpController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OTP Screen',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const  SizedBox(height: 10,),
              TextField(
                controller: otpController,
                maxLength: 6,
                decoration:const InputDecoration(labelText: "Enter OTP"),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                color: Colors.blue,
                onPressed:(){
                  verifyOtp(context);
                },
                child:const Text("Verify",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        )

    );
  }

  void verifyOtp(context)async{
    String otp=otpController.text.trim();

    //create a credential,but still we don't know if the credential is right  or no so we need to sign in with the credential
    //signIn with credential
    PhoneAuthCredential credential=PhoneAuthProvider.credential(verificationId: widget.verificationId, smsCode: otp);
    try {
      UserCredential userCred = await FirebaseAuth.instance.signInWithCredential(credential);
      if(userCred.user!=null){
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomeScreenForMobile(user: userCred.user!,)));
      }
    }on FirebaseAuthException catch(e){
      log(e.code.toString());
    }

  }
}