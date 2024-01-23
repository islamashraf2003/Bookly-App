import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/Core/widget/custom_error_widget.dart';
import 'package:booky_app/Core/widget/custom_loading_widget.dart';
import 'package:booky_app/Features/Home/presentation/manager/similar_category_books_cubet/similar_category_cubit.dart';
import 'package:booky_app/Features/Home/presentation/views/Widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListViewe extends StatelessWidget {
  const SimilarBookListViewe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCategoryCubit, SimilarCategoryState>(
      builder: (context, state) {
        if (state is SimilarCategorySuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .178,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.bookModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: CustomBookImage(
                          imgUrl: state.bookModel[index].volumeInfo.imageLinks
                              .thumbnail),
                    );
                  }),
            ),
          );
        } else if (state is SimilarCategoryFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
