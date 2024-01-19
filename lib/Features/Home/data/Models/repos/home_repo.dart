import 'package:booky_app/Core/Errors/Failure.dart';
import 'package:booky_app/Features/Home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeautureBooks();
}
/*
Either exist in darz package have tow parametars <left , right>
hava expexted tow return type .
*/
/*
api :https://api.postman.com/collections/23046850-1440a448-1be7-4cda-a70e-e8354321a8b3?access_key=PMAT-01GPYFQ27TQS1X8HMJF87VEBSC

*/