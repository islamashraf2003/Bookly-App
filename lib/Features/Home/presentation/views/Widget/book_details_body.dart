import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/action_button.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_details_appBar.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/favorit-list_view_item.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/similer_book_listView.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .28),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "The Jungle Book",
              style: Styles.titleStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                "Rudyard Kipling",
                style: Styles.titleStyle20.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BookRate(),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const ActionButton(),
            const SizedBox(
              height: 20,
            ),
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
              height: 8,
            ),
            SimilarBookListViewe(),
            const SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
