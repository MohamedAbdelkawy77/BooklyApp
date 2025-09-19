import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/ListViewHorizontal.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/ListViewVertical.dart';
import 'package:flutter/material.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       const CustomAppBar(),
    //       SizedBox(height: 300, child: const Listviewhorizontal()),
    //       const Listviewvertical()
    //     ],
    //   ),
    // );

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 300, child: Listviewhorizontal()),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 25),
            child: Text(
              "Best Seller",
              style: Stylestext.styleMedium,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Listviewvertical(),
        ),
      ],
    );
  }
}
