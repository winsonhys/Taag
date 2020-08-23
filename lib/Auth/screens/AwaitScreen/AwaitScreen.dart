import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/common/exceptions/UnauthorizedException.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AwaitScreen extends StatelessWidget {
  void loadToken(BuildContext context) async {
    try {
      await context.watch<UserProvider>().setUser();
    } on UnauthorizedException {
      await Get.offNamed('Login');
      return;
    }
    await Get.offNamed('Home');
  }

  @override
  Widget build(BuildContext context) {
    loadToken(context);
    return Center(
      child: Lottie.asset('assets/lottie/corgi.json'),
    );
  }
}
