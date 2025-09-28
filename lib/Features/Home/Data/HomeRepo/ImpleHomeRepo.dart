import 'package:bookly_app/Core/errors/Failure.dart';
import 'package:bookly_app/Features/Home/Data/Api/ApiServers2.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/Homerepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Implehomerepo extends Homerepo {
  Apiservers2 apiservers2 = Apiservers2();

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() async {
    try {
      var data = await apiservers2.GetBooks(
          endpoint: "volumes?q=flutter+programming&filter=free-ebooks");
      List<BookModel> booksmodel = [];
      for (var element in data["items"]) {
        booksmodel.add(BookModel.fromJson(element));
      }
      return right(booksmodel);
    } on Exception catch (e) {
      if (e is DioException) {
        left(Serverfailure.fromDioerror(e));
      }
      return left(Serverfailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() async {
    try {
      var data = await apiservers2.GetBooks(
          endpoint: "volumes?q=web+developmen&filter=free-ebooks");
      List<BookModel> booksmodel = [];
      for (var element in data["items"]) {
        booksmodel.add(BookModel.fromJson(element));
      }
      return right(booksmodel);
    } on Exception catch (e) {
      if (e is DioException) {
        left(Serverfailure.fromDioerror(e));
      }
      return left(Serverfailure(errorMessage: e.toString()));
    }
  }
}
