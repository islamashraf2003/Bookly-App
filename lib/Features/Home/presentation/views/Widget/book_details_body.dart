import 'package:booky_app/Features/Home/presentation/views/Widget/book_details_section.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/book_listView_section.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              children: [
                BookDetailsAppBar(),
                const BookDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                const BookListViewSection(),
                const SizedBox(
                  height: 9,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
