import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard2.dart';
import 'package:flutter/material.dart';

class Listviewvertical extends StatelessWidget {
  const Listviewvertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Customcard2();
        });
  }
}
