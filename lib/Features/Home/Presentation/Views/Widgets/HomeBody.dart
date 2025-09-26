import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:flutter/material.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 300, child: Futurebuilder(choose: 1) ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Text(
              "Best Seller",
              style: Stylestext.styleMedium,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Futurebuilder(choose: 2),
        ),
      ],
    );
  }
}
