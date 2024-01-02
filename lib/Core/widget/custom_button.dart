import 'package:booky_app/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.textTitle,
    required this.backgroundColor,
    this.outlinedBorder,
    this.textColor = Colors.white,
  });
  Color? backgroundColor;
  Color textColor;
  String textTitle;
  OutlinedBorder? outlinedBorder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: outlinedBorder,
        ),
        onPressed: () {},
        child: Text(
          textTitle,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
