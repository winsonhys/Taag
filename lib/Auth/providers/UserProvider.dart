import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:Taag/graphql/mutations.graphql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserProvider {
  BuildContext context;
  UserDataMixin user;

  UserProvider({@required this.context});

  Future<String> login(LoginData data) async {
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

  Future<String> signUp(SignupData data) async {
    final client = GraphQLProvider.of(this.context).value;
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

    user = SignUpUser$Mutation.fromJson(result.data).signUp;

    FirebaseUser firebaseUser;
    try {
      firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value("Failed signing in. Please try again later.");
    }

    final userToken = (await firebaseUser.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }
}
