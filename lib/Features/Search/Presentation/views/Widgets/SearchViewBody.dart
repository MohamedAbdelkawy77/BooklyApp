import 'package:bookly_app/Features/Search/Presentation/views/Widgets/CustomTextFeild.dart';
import 'package:bookly_app/Features/Search/Presentation/views/Widgets/ListviewSearch.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Customtextfeild(), Expanded(child: Listviewsearch())],
    );
  }
}
