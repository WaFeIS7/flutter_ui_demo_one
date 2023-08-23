import 'package:flutter/material.dart';
import 'package:flutter_demo_1/widgets_helpers/text_style.dart';

class MyTextField extends StatelessWidget {
  final String hintTextField;
  final IconData icon;

  const MyTextField({super.key, 
    required this.hintTextField,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style(),
      decoration: InputDecoration(
          icon:  Icon(
            icon,
            size: 18,
          ),
          hintText: hintTextField),
    );
  }
}
