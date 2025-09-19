import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_Appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [BookDetailsAppbar()],
      ),
    );
  }
}
