part of 'similar_category_cubit.dart';

sealed class SimilarCategoryState extends Equatable {
  const SimilarCategoryState();

  @override
  List<Object> get props => [];
}

final class SimilarCategoryInitial extends SimilarCategoryState {}

final class SimilarCategorySuccess extends SimilarCategoryState {
  final List<BookModel> bookModel;

  const SimilarCategorySuccess({required this.bookModel});
}

final class SimilarCategoryLoading extends SimilarCategoryState {}

final class SimilarCategoryFailure extends SimilarCategoryState {
  final String errorMessage;
  const SimilarCategoryFailure({required this.errorMessage});
}
