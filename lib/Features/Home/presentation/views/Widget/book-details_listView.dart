import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booky_app/Core/widget/custom_error_widget.dart';
import 'package:booky_app/Core/widget/custom_loading_widget.dart';
import 'package:booky_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/favorit-list_view_item.dart';

class BookDetailsListView extends StatelessWidget {
  BookDetailsListView({Key? key}) : super(key: key);

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
