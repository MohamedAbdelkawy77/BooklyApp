import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Book_Details_body.dart';
import 'package:flutter/material.dart';

class Bookdetails extends StatelessWidget {
  const Bookdetails({super.key});
  static const id = "/HomeDetailsView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsBody()),
    );
  }
}
