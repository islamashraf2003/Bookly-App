import 'dart:ui';

import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Core/utils/assits.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .18,
          child: AspectRatio(
            aspectRatio: 4.1 / 6.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.titleStyle22,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "J.K. Rowling",
                style: Styles.titleStyle15,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "19.99 €",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(flex: 3),
                  BookRate(),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 3,
        ),
      ],
    );
  }
}

class BookRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
          size: 26,
        ),
        SizedBox(
          width: 5.3,
        ),
        Text(
          "4.8",
          style: TextStyle(
            fontSize: 20,
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
