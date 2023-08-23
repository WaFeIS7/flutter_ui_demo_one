import 'package:flutter/material.dart';
import 'package:flutter_demo_1/widgets_helpers/button_welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'You are a',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18, left: 33, right: 33),
              child: ButtonWelcomeScreen(nameButton: 'Worker'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 33, right: 33),
              child: ButtonWelcomeScreen(nameButton: 'Customer'),
            ),
          ]),
    );
  }
}
