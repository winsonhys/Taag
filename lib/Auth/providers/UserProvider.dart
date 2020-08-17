import 'package:Taag/common/exceptions/UnauthorizedException.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserProvider {
  final BuildContext context;
  UserDataMixin user;

  UserProvider({@required this.context});

  Future<void> getUser() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      throw UnauthorizedException(message: 'User is not signed in');
    }
    final client = GraphQLProvider.of(context).value;
    final result = await client.query(QueryOptions(
        documentNode: FindUserByIdQuery().document,
        variables: {'id': firebaseUser.uid}));
    user = FindUserById$Query.fromJson(result.data).findUserById;
  }

  Future<String> login(LoginData data) async {
    FirebaseUser user;
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value('Invalid username password combination');
    }

    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }

  Future<String> signUp(SignupData data) async {
    final client = GraphQLProvider.of(context).value;
    final result = await client.mutate(MutationOptions(
        documentNode: SignUpUserMutation().document,
        variables: {
          'email': data.email,
          'password': data.password,
          'displayName': data.firstName + data.lastName,
          'firstName': data.firstName,
          'lastName': data.lastName,
          'dob': data.dob.toIso8601String()
        }));
    if (result.exception != null) {
      return Future.value(result.exception.graphqlErrors[0].message);
    }

    user = SignUpUser$Mutation.fromJson(result.data).signUp;

    FirebaseUser firebaseUser;
    try {
      firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value('Failed signing in. Please try again later.');
    }

    final userToken = (await firebaseUser.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    return Future.value(null);
  }
}
