import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    Key? key,
    required this.rating,
    required this.ratingCount,
  }) : super(key: key);

  final int rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: const Color(0xffFFDD4F),
          size: 30,
        ),
        const SizedBox(width: 5.3),
        Text(
          "$rating",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          "($ratingCount)",
          style: const TextStyle(
            fontSize: 17,
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
