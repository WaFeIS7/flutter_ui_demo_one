import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/login_register/reset_passord_screen.dart';

import '../../widgets_helpers/button_welcome_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.only(top: 98),
            child: Center(
                child: Image(
              image: AssetImage('assets/3.png'),
              width: 309.87,
              height: 226.66,
            )),
          ),

          Padding(
            padding: EdgeInsets.only(left: 24, top: 60),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forgot ',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),  

         Padding(
            padding: EdgeInsets.only(left: 24, top: 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password?',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),  
 
          Padding(
            padding: EdgeInsets.only(left: 24, top: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Don’t Worry it happens. Please Enter an email  or Mobile associated with your account',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PlusJakartaSans',
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),  
        

          Padding(
            padding: EdgeInsets.only(left: 27, top: 8, right: 27),
            child: TextField(
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 152, 63, 63)),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  size: 13,
                ),
                label: Text('Email or Mobile'),
              ),
            ),
          ),

        Padding(
            padding: EdgeInsets.only(top: 56, left: 33, right: 33),
            child: ButtonWelcomeScreen(
                nameButton: 'Submit', widget: ResetPasswordScreen()),
          ),
        
        ],
      ),
    );
  }
}
