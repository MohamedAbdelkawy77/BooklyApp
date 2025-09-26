import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard_Best_Seller.dart';
import 'package:flutter/material.dart';

class Listviewvertical extends StatelessWidget {
  const Listviewvertical({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: books.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Customcardbestseller(
            bookModel: books[index],
          );
        });
  }
}
