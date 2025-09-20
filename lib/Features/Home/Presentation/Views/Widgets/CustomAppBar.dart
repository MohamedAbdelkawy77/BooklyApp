import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          AssetsData.lOGO,
          height: 100,
          width: 100,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.search))
      ]),
    );
  }
}
