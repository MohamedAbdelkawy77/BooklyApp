import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:flutter/material.dart';

class Customcard2 extends StatelessWidget {
  const Customcard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Widgetofimage2(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1, top: 40),
              child: Titleofimage2(),
            )
          ],
        ),
      ),
    );
  }
}

class Titleofimage2 extends StatelessWidget {
  const Titleofimage2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: Center(
              child: Text(
                "moviemodel.Title",
                style: TextStyle(fontSize: 15),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        // Column(
        //   children: [],
        // ),
      ],
    );
  }
}

class Widgetofimage2 extends StatelessWidget {
  const Widgetofimage2({
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
