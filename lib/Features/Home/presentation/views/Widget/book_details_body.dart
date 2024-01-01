import 'package:booky_app/Core/utils/Styles.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_rate_widget.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_details_appBar.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          BookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .24),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 40,
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
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRate(),
            ],
          ),
        ],
      ),
    ));
  }
}
