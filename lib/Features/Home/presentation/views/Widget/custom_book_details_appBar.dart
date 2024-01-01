import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
            iconSize: 30,
          ),
          IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}
