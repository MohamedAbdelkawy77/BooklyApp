import 'package:bookly_app/Features/Home/Presentation/Views/Widgets_Book_Details/Custom_button_price.dart';
import 'package:flutter/material.dart';

class CustomBookPrice extends StatelessWidget {
  const CustomBookPrice({super.key, required this.Url});
  final String Url;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Containerprice(
          text: "Free",
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          buttoncolor: Colors.white,
          textcolor: Colors.black,
          Url: '',
        ),
        Containerprice(
          text: "Free preview",
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          buttoncolor: Colors.redAccent,
          textcolor: Colors.white,
          Url: '',
        ),
      ],
    );
  }
}
