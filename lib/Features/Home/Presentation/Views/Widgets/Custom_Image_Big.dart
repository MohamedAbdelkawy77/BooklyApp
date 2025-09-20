import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:flutter/material.dart';

class WidgetofImage extends StatelessWidget {
  const WidgetofImage({
    super.key,
  });

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
      child: Image.asset(
        AssetsData.testimage,
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.height * 0.20,
        fit: BoxFit.cover,
      ),
    );
  }
}