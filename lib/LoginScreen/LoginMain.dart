import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:dashboard/HomeScreen/Dashboard/Dashboard.dart';
import 'package:dashboard/dynamicData/Users.dart';

class LoginMain extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 1000);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User does not exist';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return '';
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User does not exist';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      // title: 'Prodler',
      theme: LoginTheme(
        primaryColor: Colors.indigo[200],
        accentColor: Colors.black54,
        footerBackgroundColor: Colors.black,
      ),
      logo: 'assets/images/logo_ka.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(Dashboard()),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
