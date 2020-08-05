import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  Future<String> _loginUser(LoginData data) async {
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: data.name, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Invalid username password combination");
    }

    final userToken = (await user.getIdToken()).token;
    // GraphQLContainer.setToken(userToken);
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
        theme: LoginTheme(
          pageColorDark: Color.fromRGBO(244, 151, 108, 1),
        ),
        logo: "assets/images/login_logo.png",
        title: "Taag",
        onSubmitAnimationCompleted: () =>
            Navigator.popAndPushNamed(context, "home"),
      ),
    );
  }
}
