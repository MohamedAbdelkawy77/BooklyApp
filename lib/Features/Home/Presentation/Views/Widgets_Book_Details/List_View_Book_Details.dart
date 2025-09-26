import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key, required this.bookmodel});
  final List<BookModel> bookmodel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookmodel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: WidgetofImage(
              height: 0.25,
              Width: 0.12,
              image: bookmodel[index].volumeInfo!.imageLinks!.smallThumbnail!,
            ),
          );
        });
  }
}
