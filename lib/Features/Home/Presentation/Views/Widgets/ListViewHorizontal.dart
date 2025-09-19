import 'package:bookly_app/Features/Home/Presentation/Views/BookDetails.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard.dart';
import 'package:flutter/material.dart';

class Listviewhorizontal extends StatelessWidget {
  const Listviewhorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Bookdetails.id);
              },
              child: Customcard1());
        });
  }
}
