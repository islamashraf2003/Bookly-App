import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/similer_book_listView.dart';
import 'package:flutter/material.dart';

class BookListViewSection extends StatelessWidget {
  const BookListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "You can also like",
                style: Styles.titleStyle20.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 9,
        ),
        const SimilarBookListViewe(),
      ],
    );
  }
}
