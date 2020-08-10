import 'package:Taag/Auth/screens/LoginScreen/LoginScreenView.dart';
import 'package:Taag/graphql/mutations.graphql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginScreen extends StatelessWidget {
  // Maybe put this in provider.
  const LoginScreen({Key key}) : super(key: key);

  Future<String> _loginUser(LoginData data) async {
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Invalid username password combination");
    }

    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }

  Future<String> _signUpUser(SignupData data, BuildContext context) async {
    final client = GraphQLProvider.of(context).value;
    final result = await client.mutate(MutationOptions(
        documentNode: SignUpUserMutation().document,
        variables: {
          "email": data.email,
          "password": data.password,
          "displayName": data.firstName + data.lastName,
          "firstName": data.firstName,
          "lastName": data.lastName,
          "dob": data.dob.toIso8601String()
        }));
    if (result.exception != null) {
      Future.value(result.exception.graphqlErrors[0].message);
    }
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Failed signing in. Please try again later.");
    }

    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreenView(
      loginUser: _loginUser,
      signUpUser: (data) => _signUpUser(data, context),
    );
  }
}
