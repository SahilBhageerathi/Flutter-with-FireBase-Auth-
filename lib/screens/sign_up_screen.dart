import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  TextEditingController emailAddressController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPwdController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up Screen',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const  SizedBox(height: 10,),
              TextField(
                controller: emailAddressController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: "Password"),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: confirmPwdController,
                decoration: const InputDecoration(labelText: "Confirm Password"),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                color: Colors.blue,
                onPressed:(){
                  createAccount();
                },
                child:const Text("Sign Up",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        )

    );
  }

  void createAccount()async{
    String email=emailAddressController.text.trim();
    String password=passwordController.text.trim();
    String cPassword=confirmPwdController.text.trim();

    if(email==""||password==""||cPassword==""){
      log("please enter all details");
    }
    else if(password!=cPassword){
      log("Passwords doesn't Match");
    }
    else {
      try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      log("user has been created");

      if(userCredential.user!=null){
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch(ex){
        log(ex.code.toString());
      }

    }
  }
}