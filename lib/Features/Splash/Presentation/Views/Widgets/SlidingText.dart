import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sliding,
  });

  final Animation<Offset> sliding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliding,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
            position: sliding, child: Text("Read Free Books"));
      },
    );
  }
}