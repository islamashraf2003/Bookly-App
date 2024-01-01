import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
          size: 30,
        ),
        SizedBox(
          width: 5.3,
        ),
        Text(
          "4.8",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "(2390)",
          style: TextStyle(
            fontSize: 17,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
