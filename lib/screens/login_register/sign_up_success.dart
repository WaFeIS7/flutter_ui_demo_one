import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/key_contants.dart';
import 'package:flutter_demo_1/screens/login_register/sign_in_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/button_welcome_screen.dart';

class SignUpSuccesScreen extends StatelessWidget {
  const SignUpSuccesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 98),
            child: Center(
                child: Image(
              image: AssetImage('assets/1.png'),
              width: 309.87,
              height: 226.66,
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 28, bottom: 8),
            child: Center(
                child: Image(
              image: AssetImage('assets/5.png'),
              width: 309.87,
              height: 226.66,
            )),
          ),
          Text(
            'Signed up Successfully',
            style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        

         Padding(
            padding: EdgeInsets.only(top: 126, left: 33, right: 33),
            child: ButtonWelcomeScreen(
                nameButton: 'Continue', valueKey: buttonContinueSignUpSuccess, widget: SignIn()),
          ),
        ],
      ),
    );
  }
}
