import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/key_contants.dart';
import 'package:flutter_demo_1/screens/login_register/sign_up_screen.dart';
import 'package:flutter_demo_1/screens/product/product_list_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/button_welcome_screen.dart';
import 'package:flutter_demo_1/widgets_helpers/social_button.dart';
import 'package:flutter_demo_1/widgets_helpers/text_field_widget.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';
import 'forgot_password_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Image(
                image: AssetImage('assets/2.png'),
                width: 225,
                height: 226,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login',
                  style: style(size: 40, weight: FontWeight.w600),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 31, right: 31),
              child: Column(
                children: [
                  MyTextField(hintTextField: 'Email', icon: Icons.email),
                  MyTextField(hintTextField: 'Password', icon: Icons.password),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen()),
                      );
                    },
                    child: Text(
                      'Forgot Password ?',
                      style: style(
                        color: const Color.fromARGB(255, 9, 53, 119),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 26, left: 33, right: 33),
              child: ButtonWelcomeScreen(
                  nameButton: 'Continue',
                  valueKey: buttonContinueSignIn,
                  widget: ProductListcreen()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 35),
              child: Text(
                'Or Use Social',
                style: style(color: const Color.fromARGB(255, 4, 50, 2)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 26, left: 33, right: 33),
              child: SocialButton(
                  buttonName: 'Login with Google',
                  assetImage: AssetImage('assets/googleIcon.png')),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 33, right: 33),
              child: SocialButton(
                  buttonName: 'Login with FaceBook',
                  assetImage: AssetImage('assets/faceBookIcon.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to us?',
                    style: style(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: style(
                        color: const Color.fromARGB(255, 219, 5, 5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
