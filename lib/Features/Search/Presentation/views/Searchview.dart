import 'package:bookly_app/Features/Search/Presentation/views/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});
  static const String id = "/Searchview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Searchviewbody()),
    );
  }
}
