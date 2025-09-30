import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      child: CachedNetworkImage(
        imageUrl: image,
        height: MediaQuery.of(context).size.height * height,
        width: MediaQuery.of(context).size.height * Width,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.dangerous,
            size: 30,
            color: MyColors.violet,
          ),
        ),
        placeholder: (context, url) => Center(
            child: Text(
          "Loading...",
          style: TextStyle(fontSize: 20, color: MyColors.violet),
        )),
      ),
    );
  }
}
