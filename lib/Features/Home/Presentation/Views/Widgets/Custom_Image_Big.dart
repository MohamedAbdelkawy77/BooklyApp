import 'package:flutter/material.dart';

class WidgetofImage extends StatelessWidget {
  const WidgetofImage({
    super.key,
    required this.height,
    required this.Width,
    required this.image,
  });
  final double height;
  final double Width;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.network(
        image,
        height: MediaQuery.of(context).size.height * height,
        width: MediaQuery.of(context).size.height * Width,
        fit: BoxFit.cover,
      ),
    );
  }
}
