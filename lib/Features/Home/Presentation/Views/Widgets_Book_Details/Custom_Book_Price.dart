import 'package:flutter/material.dart';

class CustomBookPrice extends StatelessWidget {
  const CustomBookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Containerpriceone(),
          Containerpricetwo(),
        ],
      ),
    );
  }
}

class Containerpricetwo extends StatelessWidget {
  const Containerpricetwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: Colors.red),
      child: Center(
          child: Text(
        "Free Preview",
      )),
    );
  }
}

class Containerpriceone extends StatelessWidget {
  const Containerpriceone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          color: Colors.white),
      child: Center(
          child: Text(
        "19.9\$",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
