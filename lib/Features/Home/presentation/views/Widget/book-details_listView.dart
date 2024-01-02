import 'package:booky_app/Features/Home/presentation/views/Widget/favorit-list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: BestSellerListViewItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
