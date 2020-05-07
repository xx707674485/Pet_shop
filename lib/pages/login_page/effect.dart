import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<LoginPageState> buildEffect() {
  return combineEffects(<Object, Effect<LoginPageState>>{
    LoginPageAction.checkRational: _onCheckRational,
    LoginPageAction.loginIn: _onLoginIn,
  });
}

void _onCheckRational(Action action, Context<LoginPageState> ctx) {}

void _onLoginIn(Action action, Context<LoginPageState> ctx) {}
