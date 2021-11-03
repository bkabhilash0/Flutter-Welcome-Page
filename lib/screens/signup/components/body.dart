import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/components/rounded_button.dart';
import 'package:login_page/constants.dart';
import 'package:login_page/screens/login/components/already_have_an_acc.dart';
import 'package:login_page/screens/login/components/rounded_input_field.dart';
import 'package:login_page/screens/login/components/rounded_password_field.dart';
import 'package:login_page/screens/login/login_screen.dart';
import "./background.dart";
import "./or_divider.dart";
import "./social_icons.dart";

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * .03),
            SvgPicture.asset('assets/icons/signup.svg',
                height: size.height * .35),
            RoundedInputField(
                hintText: "Your Email", icon: Icons.person, onChanged: (val) {}),
            RoundedPasswordField(onChanged: (pass) {}),
            RoundedButton(text: "SIGNUP", press: () {}, color: kPrimaryColor),
            SizedBox(height: size.height * .03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
              },
              login: false,
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
