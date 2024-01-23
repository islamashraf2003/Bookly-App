import 'package:flutter/material.dart';

void waringMeassage(BuildContext context, String warning, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(warning),
      backgroundColor: color,
    ),
  );
}
