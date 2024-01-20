import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeautureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
