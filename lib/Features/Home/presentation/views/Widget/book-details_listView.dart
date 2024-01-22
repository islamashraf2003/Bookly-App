import 'package:booky_app/Core/widget/custom_error_widget.dart';
import 'package:booky_app/Core/widget/custom_loading_widget.dart';
import 'package:booky_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/favorit-list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: BestSellerListViewItem(bookModel: state.books[index]),
                );
              },
              childCount: 10,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingWidget(),
          );
        }
      },
    );
  }
}
