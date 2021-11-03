import 'package:flutter/material.dart';
import './components/body.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(body: Body());
  }
}