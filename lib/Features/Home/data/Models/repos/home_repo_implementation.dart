import 'dart:developer';

import 'package:booky_app/Core/Errors/Failure.dart';
import 'package:booky_app/Core/utils/api_service.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:booky_app/Features/Home/data/Models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> bookData = [];

      for (var item in data['items']) {
        bookData.add(BookModel.fromJson(item));
      }
      return right(bookData);
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeautureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=FLutter&Filtering=free-ebooks');
      List<BookModel> bookData = [];

      for (var item in data['items']) {
        bookData.add(BookModel.fromJson(item));
      }
      return right(bookData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(errorMessage: e.toString()));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
