import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/BookDetails.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';
 

class Listviewhorizontal extends StatelessWidget {
  const Listviewhorizontal({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Bookdetails(bookModel:books[index] ,), 
                  ),
                );
                print(books[index].volumeInfo!.imageLinks!.thumbnail ?? "");
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: WidgetofImage(
                  height: 0.7,
                  Width: 0.20,
                  image: books[index].volumeInfo!.imageLinks!.thumbnail!,
                ),
              ));
        });
  }
}
