import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String buttonName;
  final AssetImage assetImage;

  const SocialButton({super.key, required this.buttonName, required this.assetImage});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 226, 233, 226),
          shadowColor: const Color.fromARGB(255, 141, 4, 205),
          minimumSize: const Size(323, 41),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
      icon: Image(
        image: assetImage,
        width: 21,
        height: 21,
      ),
      label: Align(
        alignment: Alignment.center,
        child: Text(
          buttonName,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
    );
  }
}
