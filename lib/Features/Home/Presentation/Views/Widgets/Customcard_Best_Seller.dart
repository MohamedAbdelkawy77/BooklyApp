import 'package:bookly_app/Core/utils/StylesText.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customcardbestseller extends StatelessWidget {
  const Customcardbestseller({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, bottom: 25, top: 0),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetofImage(
              height: 0.22,
              Width: 0.13,
              image: bookModel.volumeInfo!.imageLinks!.thumbnail ?? "",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40),
              child: Titleofimage2(
                bookModel: bookModel,
              ),
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
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            bookModel.volumeInfo!.title ?? "Not Known",
            maxLines: 2,
            style: Stylestext.styleMediumTitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            bookModel.volumeInfo?.authors?[0] ?? "Not Known",
            style: Stylestext.stylesmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        rowdetailsCard2(bookModel),
      ],
    );
  }
}

Row rowdetailsCard2(BookModel bookmodel) {
  return Row(
    children: [
      Text(
        bookmodel.saleInfo!.country ?? "200\$",
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
        "4",
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
