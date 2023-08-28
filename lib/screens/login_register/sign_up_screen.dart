import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/key_contants.dart';
import 'package:flutter_demo_1/screens/login_register/sign_in_screen.dart';
import 'package:flutter_demo_1/screens/login_register/sign_up_success.dart';
import 'package:flutter_demo_1/widgets_helpers/button_welcome_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/text_field_widget.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Image(
              image: AssetImage('assets/1.png'),
              width: 225,
              height: 226,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign up',
                style: style(size: 40, weight: FontWeight.w600),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 31, right: 31),
            child: Column(
              children: [
                MyTextField(hintTextField: 'Email', icon: Icons.email),
                MyTextField(hintTextField: 'Full Name', icon: Icons.near_me),
                MyTextField(
                    hintTextField: 'Mobile', icon: Icons.mobile_friendly),
                MyTextField(hintTextField: 'Password', icon: Icons.password),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31, right: 31, top: 10),
            child: Text(
              'By Signing up, you’re agree to our Term & Conditions and Privacy Policy',
              style: style(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 26, left: 33, right: 33),
            child: ButtonWelcomeScreen(
                nameButton: 'Continue',
                valueKey: buttonContinueSignUp,
                widget: SignUpSuccesScreen()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 33, top: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Joined before? ',
                  style: style(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: Text(
                    ' Login',
                    style: style(
                      color: const Color(0xFF1769E3),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
