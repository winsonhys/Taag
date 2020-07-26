import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  Future<String> _loginUser(LoginData data) {
    return Future.value(null);
  }

  Future<String> _recoverPassword(String name) {
    return Future.value(null);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogin(
        onSignup: _loginUser,
        onLogin: _loginUser,
        onRecoverPassword: _recoverPassword,
        theme: LoginTheme(pageColorDark: Color.fromRGBO(247, 65, 140, 1)),
        logo: "assets/images/login_logo.png",
        title: "Taag",
      ),
    );
  }
}
