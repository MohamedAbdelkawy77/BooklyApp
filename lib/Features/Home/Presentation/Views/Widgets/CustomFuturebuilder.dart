import 'package:bookly_app/Features/Home/Data/Api/Apiserves.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/ListViewHorizontal.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/ListViewVertical.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/List_View_Book_Details.dart';
import 'package:flutter/material.dart';

class Futurebuilder extends StatelessWidget {
  const Futurebuilder({super.key, required this.choose});
  final int choose;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookModel>>(
      future: Apiserves().fetchBooks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("No books found"));
        } else {
          final books = snapshot.data!;
          if (choose == 1) {
            return Listviewhorizontal(books: books);
          } else if (choose == 2) {
            return Listviewvertical(books: books);
          } else {
            return ListViewBookDetails(bookmodel: books,);
          }
        }
      },
    );
  }
}

 