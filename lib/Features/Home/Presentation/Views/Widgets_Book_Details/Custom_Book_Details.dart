import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetails extends StatelessWidget {
  const CustomBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Title_of_Book_Detials(),
        const Text(
          "Auther Name",
          style: Stylestext.stylesmall,
        ),
        rowdetailsbook(),
      ],
    );
  }
}

class Title_of_Book_Detials extends StatelessWidget {
  const Title_of_Book_Detials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Text(
        "Book Title",
        maxLines: 2,
        style: Stylestext.styleMedium,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}

Row rowdetailsbook() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.amber,
        size: 18,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        "50",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        "(50)",
        style: Stylestext.stylesmall,
      ),
    ],
  );
}
