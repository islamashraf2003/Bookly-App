import 'package:booky_app/Core/widget/custom_error_widget.dart';
import 'package:booky_app/Core/widget/custom_loading_widget.dart';
import 'package:booky_app/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CustomBookImage(
                      imgUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
