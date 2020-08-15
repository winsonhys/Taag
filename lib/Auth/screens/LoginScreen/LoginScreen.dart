import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/Auth/screens/LoginScreen/LoginScreenView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreenView(
      loginUser: context.watch<UserProvider>().login,
      signUpUser: context.watch<UserProvider>().signUp,
    );
  }
}
