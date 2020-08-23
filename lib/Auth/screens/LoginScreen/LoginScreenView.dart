import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

class LoginScreenView extends StatelessWidget {
  final Function signUpUser;
  final Function loginUser;
  const LoginScreenView(
      {Key key, @required this.loginUser, @required this.signUpUser})
      : super(key: key);

  Future<String> _recoverPassword(String name) {
    return Future.value(null);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogin(
        onSignup: signUpUser,
        onLogin: loginUser,
        onRecoverPassword: _recoverPassword,
        theme: LoginTheme(
          pageColorDark: Color.fromRGBO(244, 151, 108, 1),
        ),
        logo: 'assets/images/login_logo.png',
        title: 'Taag',
        onSubmitAnimationCompleted: () {
          context.read<UserProvider>().notifyUserChange();
          Get.offAllNamed('Home');
        },
      ),
    );
  }
}
