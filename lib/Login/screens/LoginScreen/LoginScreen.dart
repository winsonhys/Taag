import 'package:Taag/Login/screens/LoginScreen/LoginScreenView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  Future<String> _loginUser(LoginData data) async {
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.name, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Invalid username password combination");
    }

    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }

  Future<String> _signUpUser(LoginData data) async {
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.name, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Invalid username password combination");
    }

    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }

  @override
  Widget build(BuildContext context) {
    return Mutation(
        options: MutationOptions(documentNode: null),
        builder: (RunMutation runMutation, result) {
          return LoginScreenView(
            loginUser: _loginUser,
            signUpUser: _signUpUser,
          );
        });
  }
}
