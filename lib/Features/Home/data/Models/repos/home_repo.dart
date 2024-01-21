import 'package:booky_app/Core/Errors/Failure.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeautureBooks();
}
/*
Either exist in darz package have tow parametars <left , right>
hava expexted tow return type .
*/
