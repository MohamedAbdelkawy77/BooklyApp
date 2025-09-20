import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:flutter/material.dart';

class Customcard1 extends StatelessWidget {
  const Customcard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: WidgetofImage(),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleOfimage extends StatelessWidget {
  const TitleOfimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      child: Text(
        "Book Title",
        style: TextStyle(fontSize: 15),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

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
