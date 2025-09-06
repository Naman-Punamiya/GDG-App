import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController textcontroller;
  final String hintText;
  final bool obscureText;
  const Mytextfield(
      {super.key,
      required this.textcontroller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0)),
        hintText: hintText,
      ),
    );
  }
}
