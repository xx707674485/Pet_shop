import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginPageAction { checkRational, loginIn }

class LoginPageActionCreator {
  static Action onCheckAccount() {
    return const Action(LoginPageAction.checkRational);
  }

  static Action onLoginIn() {
    return const Action(LoginPageAction.loginIn);
  }
}
