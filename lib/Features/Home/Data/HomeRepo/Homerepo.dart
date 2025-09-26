import 'package:bookly_app/Core/errors/Failure.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();
}
