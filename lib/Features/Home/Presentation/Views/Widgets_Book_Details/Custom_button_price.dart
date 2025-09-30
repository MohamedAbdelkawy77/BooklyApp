import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Containerprice extends StatelessWidget {
  const Containerprice({
    super.key,
    required this.text,
    required this.buttoncolor,
    required this.borderRadius,
    required this.textcolor,
    required this.Url,
  });
  final String text;
  final Color buttoncolor;
  final Color textcolor;
  final BorderRadius borderRadius;
  final String Url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .07,
      width: MediaQuery.of(context).size.width * .4,
      decoration: BoxDecoration(borderRadius: borderRadius, color: buttoncolor),
      child: Center(
          child: TextButton(
              onPressed: () async {
                final Uri url = Uri.parse(Url);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw "Could not launch $url";
                }
              },
              child: Text(
                text,
                style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
              ))),
    );
  }
}
