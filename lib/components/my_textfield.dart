import 'package:flutter/material.dart';
import 'package:idairy/utils/global_colors.dart';

class myTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const myTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.primary),
          ),
          fillColor: GlobalColors.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: GlobalColors.textColor),
        ),
      ),
    );
  }
}