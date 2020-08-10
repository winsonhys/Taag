import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class AwaitScreen extends StatelessWidget {
  loadToken() async {
    final user = await FirebaseAuth.instance.currentUser();
    if (user == null) {
      Get.offNamed("Login");
      return;
    }
    final userToken = (await user.getIdToken()).token;
    GraphQLContainer.setToken(userToken);
    Get.offNamed("Home");
  }

  @override
  Widget build(BuildContext context) {
    loadToken();
    return Center(
      child: Lottie.asset("assets/lottie/corgi.json"),
    );
  }
}
