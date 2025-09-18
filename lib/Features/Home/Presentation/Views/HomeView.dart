import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/HomeBody.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homebody(),
    );
  }
}
