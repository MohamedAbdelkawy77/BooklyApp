import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard_Best_Seller.dart';
import 'package:flutter/material.dart';

class Listviewsearch extends StatelessWidget {
  const Listviewsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: () {}, child: Customcardbestseller());
        });
  }
}
