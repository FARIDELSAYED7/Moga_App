import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({super.key, required this.formLabel , required this.hideen});
  final String formLabel;
  final bool hideen;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 50,
      width: double.infinity,
      child: TextField(
        obscureText: hideen,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF5F7FF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          labelText: formLabel,
          labelStyle: TextStyle(color: Colors.grey[700]),  
        ),
      ),
    );
  }
}
