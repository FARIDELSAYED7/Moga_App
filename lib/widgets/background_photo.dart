import 'package:flutter/material.dart';
import 'package:mogab/util/logo_title.dart';
import 'package:mogab/widgets/Elveated_buttons.dart';

class BackgroundPhoto extends StatelessWidget {
  const BackgroundPhoto({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),      ],
    );
  }
}
