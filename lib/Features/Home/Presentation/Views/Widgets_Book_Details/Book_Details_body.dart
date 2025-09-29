import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_Appbar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Details.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Price.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  BookDetailsAppbar(),
                  WidgetofImage(
                    height: 0.34,
                    Width: 0.23,
                    image: bookModel.volumeInfo!.imageLinks!.thumbnail ?? "https://www.google.com/imgres?q=flutter&imgurl=https%3A%2F%2Fapi.reliasoftware.com%2Fuploads%2Fwhat_is_flutter_fcb6c7a4b8.png&imgrefurl=https%3A%2F%2Freliasoftware.com%2Fblog%2Fwhat-is-flutter&docid=j0HrOE7-e7FQNM&tbnid=cERsoqMzl4MpVM&vet=12ahUKEwjR9ZW5jf-PAxWbVqQEHYFUL70QM3oECBQQAA..i&w=937&h=461&hcb=2&ved=2ahUKEwjR9ZW5jf-PAxWbVqQEHYFUL70QM3oECBQQAA",
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomBookDetails(
                    bookModel: bookModel,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  CustomBookPrice(),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "You can also like",
                      style: Stylestext.styleMediumTitle,
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Futurebuilder(choose: 3)),
                ],
              ),
            ))
      ],
    );
  }
}
