import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard2.dart';
import 'package:flutter/material.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Widgetofimage2(),
          );
        });
  }
}
