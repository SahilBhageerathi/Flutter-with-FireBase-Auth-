import 'package:flutter/cupertino.dart';

abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  String email;
  String password;
  void Function() navigateCallback;

  LoginEvent({required this.email, required this.password,required this.navigateCallback});
}

class LogoutEvent extends AuthEvent {
 void Function() navigateCallback;
  LogoutEvent({required this.navigateCallback});
}
