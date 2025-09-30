// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookly_app/Core/errors/Failure.dart';
import 'package:bookly_app/Features/Home/Data/Api/ApiServers2.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/Homerepo.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';

class Implehomerepo extends Homerepo {
  Apiservers2 apiservers2;
  Implehomerepo({
    required this.apiservers2,
  });

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks({required String endpoint}) async {
    try {
      var data = await apiservers2.GetBooks(
          endpoint: endpoint);
      List<BookModel> booksmodel = [];
      for (var element in data["items"]) {
        booksmodel.add(BookModel.fromJson(element));
      }
      return right(booksmodel);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(Serverfailure.fromDioerror(e));
      } else {
        return left(Serverfailure(errorMessage: e.toString()));
      }
    }
  }

 

}
