import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_1/screens/home_screen.dart';
import 'package:sample_1/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController emailAddressController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Screen',style: TextStyle(color: Colors.white),),
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
              CupertinoButton(
                  color: Colors.blue,
                  onPressed:(){
                    login();
                  },
                child:const Text("Log In",style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                },
                child:const Text("Create new Account",),
              ),
            ],
          ),
        )

    );
  }

  void login()async{
    String email=emailAddressController.text.trim();
    String password=passwordController.text.trim();

    if(email==""||password==""){
      log("please enter all details");
    }
    else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        log("user is Logged in");
        if(userCredential.user!=null){
          // Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomeScreen(user: userCredential.user!,)));
        }
      } on FirebaseAuthException catch(ex){
        log(ex.code.toString());
      }

    }
  }
}