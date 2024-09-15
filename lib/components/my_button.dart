import 'package:flutter/material.dart';
import 'package:idairy/utils/global_colors.dart';

class MyButton extends StatelessWidget {

  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: GlobalColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Center(child: Text(text,style: TextStyle(color: GlobalColors.textColor),),),
      ),
    );
  }
}