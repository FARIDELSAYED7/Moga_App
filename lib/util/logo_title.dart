import 'package:flutter/material.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Moga",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          'assets/images/mogalogo.png',
          width: 50,
          height: 80,
        ),
        Text(
          "Relax",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
