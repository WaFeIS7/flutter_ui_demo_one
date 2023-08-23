import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/login_register/sign_up_screen.dart';


class ButtonWelcomeScreen extends StatelessWidget {

    const ButtonWelcomeScreen(
      {super.key, required this.nameButton, this.widget = const SignUpScreen() });
  final String nameButton;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 172, 224, 173),
          shadowColor: Colors.greenAccent,
          minimumSize: const Size(323, 41),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Align(
        alignment: Alignment.center,
        child: Text(
          nameButton,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}
