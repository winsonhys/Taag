import 'package:Taag/common/exceptions/UnauthorizedException.dart';
import 'package:Taag/graphql/GraphqlContainerProvider.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class UserProvider extends ChangeNotifier {
  final BuildContext context;
  UserDataMixin user;

  UserProvider({@required this.context});

  void notifyUserChange() {
    notifyListeners();
  }

  Future<void> setUser() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser();
    if (firebaseUser == null) {
      throw UnauthorizedException(message: 'User is not signed in');
    }
    final userToken = (await firebaseUser.getIdToken()).token;
    final client = GraphQLProvider.of(context).value;
    final result = await client.query(QueryOptions(
        documentNode: FindUserByIdQuery().document,
        variables: {'id': firebaseUser.uid}));

    user = FindUserById$Query.fromJson(result.data).findUserById;
    context.read<GraphqlContainerProvider>().setToken(userToken);
  }

  Future<String> login(LoginData data) async {
    FirebaseUser firebaseUser;
    try {
      firebaseUser = (await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: data.email, password: data.password))
          .user;
    } catch (e) {
      return Future.value('Invalid username password combination');
    }

    final userToken = (await firebaseUser.getIdToken()).token;
    context.watch<GraphqlContainerProvider>().setToken(userToken);
    await setUser();
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
    context.watch<GraphqlContainerProvider>().setToken(userToken);
    return Future.value(null);
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      user = null;
    } catch (e) {
      throw Exception('Cannot sign out, please try again');
    }
  }
}
