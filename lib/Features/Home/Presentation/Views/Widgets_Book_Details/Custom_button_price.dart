import 'package:flutter/material.dart';

class Containerprice extends StatelessWidget {
  const Containerprice({
    super.key,
    required this.text,
    required this.buttoncolor,
    required this.borderRadius,
    required this.textcolor,
  });
  final String text;
  final Color buttoncolor;
  final Color textcolor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(borderRadius: borderRadius, color: buttoncolor),
      child: Center(
          child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
              ))),
    );
  }
}
