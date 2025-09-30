import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:dio/dio.dart';

class Apiserves {
  Dio dio = Dio();
  Future<List<BookModel>> fetchBooks() async {
    try {
      List<BookModel> Booksprogram = [];
      Response response = await dio
          .get("https://www.googleapis.com/books/v1/volumes?q=programming");
      if (response.statusCode == 200) {
        List<dynamic> Data = response.data["items"];
        for (var i = 0; i < Data.length; i++) {
          Booksprogram.add(BookModel.fromJson(Data[i]));
        }
        return Booksprogram;
      } else {
        return [];
      }
    } on Exception catch (_) {
      return [];
    }
  }
}
