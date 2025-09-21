import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_Appbar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Details.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_Book_Price.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/List_View_Book_Details.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
                  WidgetofImage(height: 0.34, Width: 0.23),
                  SizedBox(
                    height: 35,
                  ),
                  CustomBookDetails(),
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
                      child: ListViewBookDetails()),
                ],
              ),
            ))
      ],
    );
  }
}
