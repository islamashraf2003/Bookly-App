import 'package:bloc/bloc.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_category_state.dart';

class SimilarCategoryCubit extends Cubit<SimilarCategoryState> {
  SimilarCategoryCubit(this.homeRepo) : super(SimilarCategoryInitial());
  HomeRepo homeRepo;
  Future<void> fetchSimilarCategoryBoos({required String category}) async {
    emit(SimilarCategoryLoading());
    var result = await homeRepo.fetchSimilarCategoryBooks(category: category);
    result.fold((failure) {
      emit(SimilarCategoryFailure(errorMessage: failure.errorMessage));
    }, (book) {
      emit(SimilarCategorySuccess(bookModel: book));
    });
  }
}
