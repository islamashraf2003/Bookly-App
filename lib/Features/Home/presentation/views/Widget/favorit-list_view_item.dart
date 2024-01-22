import 'dart:ui';

import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Core/utils/app_router.dart';
import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
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
                aspectRatio: 2.7 / 4.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.titleStyle22,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.titleStyle15,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Free",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(flex: 20),
                      BookRate(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          ratingCount: bookModel.volumeInfo.ratingsCount ?? 0),
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
