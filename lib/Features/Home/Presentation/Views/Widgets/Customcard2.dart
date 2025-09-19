import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customcard2 extends StatelessWidget {
  const Customcard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, bottom: 15, top: 20),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Widgetofimage2(),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: const Titleofimage2(),
            ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .2,
          child: const Text(
            "moviemodel.Title ",
            maxLines: 2,
            style: Stylestext.styleMediumTitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Text(
          "Auther Name",
          style: Stylestext.stylesmall,
        ),
        rowdetailsCard2(),
      ],
    );
  }

  Row rowdetailsCard2() {
    return Row(
      children: [
        Text(
          "14@",
          style: Stylestext.styleMedium,
        ),
        SizedBox(
          width: 25,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        SizedBox(
          width: 8,
        ), 
        Text(
          "5",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "(5)",
          style: Stylestext.stylesmall,
        ),
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
            color: Colors.black,
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        AssetsData.testimage,
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.height * 0.15,
        fit: BoxFit.cover,
      ),
    );
  }
}
