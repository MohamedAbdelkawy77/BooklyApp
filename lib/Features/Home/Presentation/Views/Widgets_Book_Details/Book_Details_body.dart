import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_Appbar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Details.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Price.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/List_View_Book_Details.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          BookDetailsAppbar(),
          Customcard1(),
          SizedBox(
            height: 30,
          ),
          CustomBookDetails(),
          CustomBookPrice(),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "You can also like",
              style: Stylestext.styleMediumTitle,
            ),
          ),
          Expanded(child: ListViewBookDetails())
        ],
      ),
    );
  }
}
