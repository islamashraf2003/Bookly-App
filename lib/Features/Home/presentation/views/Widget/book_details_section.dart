import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/action_button.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: const CustomBookImage(
              imgUrl:
                  'https://www.google.com/search?sca_esv=600247804&sxsrf=ACQVn08Y4_IOWCafTyxJli0Dit0n9LdEhQ:1705855263105&q=error+image+url&tbm=isch&source=lnms&sa=X&ved=2ahUKEwi2jvuH9u6DAxWUfKQEHQxWBKgQ0pQJegQIDBAB&biw=1528&bih=742&dpr=1.25#imgrc=IELwgGfK18BhyM'),
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRate(rating: 0, ratingCount: 1),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const ActionButton(),
      ],
    );
  }
}
