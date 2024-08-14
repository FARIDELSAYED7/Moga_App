import 'package:flutter/material.dart';

class ButtonElevated extends StatelessWidget {
  const ButtonElevated(
      {super.key, required this.text, required this.onpressed});
  final String text;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Color.fromRGBO(142, 151, 253, 0.94),
          disabledBackgroundColor: Color.fromRGBO(142, 151, 253, 0.94),
        ),
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}

