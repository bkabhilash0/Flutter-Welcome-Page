import 'package:flutter/material.dart';
import "./components/body.dart";

class SignUpScreen extends StatelessWidget {
  static const routeName = "/signup";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}
