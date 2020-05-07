import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class LoginPageState implements Cloneable<LoginPageState> {
  TextEditingController textAccountController;
  TextEditingController textPassWordController;
  bool isUserFul;

  Color loginBg;

  @override
  LoginPageState clone() {
    return LoginPageState()
      ..textAccountController = textAccountController
      ..textPassWordController = textPassWordController
      ..isUserFul = isUserFul;
  }
}

LoginPageState initState(Map<String, dynamic> args) {
  LoginPageState state = LoginPageState();
  state.isUserFul = false;
  state.textAccountController = new TextEditingController();
  state.textPassWordController = TextEditingController();
  return state;
}
