import 'package:bookly_app/Core/utils/assetsaata.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/Widgets/SlidingText.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliding;
  @override
  void initState() {
    super.initState();
    slidingAnimated();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.lOGO),
          SlidingText(sliding: sliding),
        ],
      ),
    );
  }

  void slidingAnimated() {
    animationController = AnimationController(
      vsync: this,
      duration:const Duration(seconds: 1),
    );
    sliding = Tween<Offset>(begin:const Offset(0, 10), end:const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }
}
