import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppbar extends StatelessWidget {
  const BookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         IconButton(
          icon:const Icon(
            Icons.close,
            size: 20,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        IconButton(
          icon:const Icon(
            Icons.shopping_cart,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
