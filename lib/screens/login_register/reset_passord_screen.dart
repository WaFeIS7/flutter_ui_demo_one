import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/key_contants.dart';
import 'package:flutter_demo_1/screens/login_register/sign_in_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/button_welcome_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 98),
              child: Center(
                  child: Image(
                image: AssetImage('assets/6.png'),
                width: 309.87,
                height: 226.66,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forgot',
                  style: style(size: 40, weight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 6),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password?',
                  style: style(size: 40, weight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, top: 8, right: 27),
              child: TextField(
                style: style(
                  size: 16,
                  color: const Color.fromARGB(255, 152, 63, 63),
                ),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.password,
                    size: 13,
                  ),
                  label: Text('New Password'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, top: 8, right: 27),
              child: TextField(
                style: style(
                  size: 16,
                  color: const Color.fromARGB(255, 152, 63, 63),
                ),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.password,
                    size: 13,
                  ),
                  label: Text('Confirm Password'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 56, left: 33, right: 33),
              child: ButtonWelcomeScreen(
                  nameButton: 'Submitting',
                  valueKey: buttonSubmitting,
                  widget: SignIn()),
            ),
          ],
        ),
      ),
    );
  }
}
