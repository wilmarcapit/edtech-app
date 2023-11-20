import 'package:edtech_app/App/Screen/Dashboard_Screen.dart';
import 'package:edtech_app/App/Screen/Login_Screen.dart';
import 'package:edtech_app/App/Screen/Signup_Screen.dart';
import 'package:flutter/material.dart';

class ActiveRoutes {
  static Map<String, Widget Function(BuildContext)> list = {
    SignUpScreen.routeName: (context) => const SignUpScreen(),
    LoginScreen.routeName: (context) => const LoginScreen(),
    DashBoardScreen.routeName: (context) => const DashBoardScreen(),
  };
}
