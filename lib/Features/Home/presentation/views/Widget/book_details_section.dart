import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/action_button.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: CustomBookImage(
              imgUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookModel.volumeInfo.title ?? "unKnown",
          style: Styles.titleStyle30.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? "unKnown",
            style: Styles.titleStyle20.copyWith(
              fontStyle: FontStyle.italic,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRate(
                rating: bookModel.volumeInfo.averageRating ?? 0,
                ratingCount: bookModel.volumeInfo.ratingsCount ?? 0),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        ActionButton(bookModel: bookModel),
      ],
    );
  }
}
