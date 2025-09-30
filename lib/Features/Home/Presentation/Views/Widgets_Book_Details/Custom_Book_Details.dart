import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetails extends StatelessWidget {
  const CustomBookDetails({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Title_of_Book_Detials(title: bookModel.volumeInfo!.title!),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? "UnKnown",
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
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Text(
        title,
        maxLines: 1,
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
        "4.7",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        "(5826)",
        style: Stylestext.stylesmall,
      ),
    ],
  );
}
