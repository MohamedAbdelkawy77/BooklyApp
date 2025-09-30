import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_body.dart';
import 'package:flutter/material.dart';

class Bookdetails extends StatelessWidget {
  const Bookdetails({super.key, required this.bookModel});
  static const id = "/HomeDetailsView";
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsBody(
        bookModel: bookModel,
      )),
    );
  }
}
