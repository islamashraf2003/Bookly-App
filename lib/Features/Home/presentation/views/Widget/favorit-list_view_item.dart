import 'dart:ui';

import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Core/utils/app_router.dart';
import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });
  //final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookView);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
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
                      Spacer(flex: 4),
                      BookRate(),
                      const Spacer(
                        flex: 2,
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
        ),
      ),
    );
  }
}
