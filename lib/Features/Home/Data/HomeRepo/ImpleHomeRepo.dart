import 'package:bookly_app/Core/errors/Failure.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/Homerepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class Implehomerepo extends Homerepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() {
 
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() {
 
    throw UnimplementedError();
  }
}