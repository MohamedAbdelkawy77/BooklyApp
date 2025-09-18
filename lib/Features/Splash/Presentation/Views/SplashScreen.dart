import 'dart:async';

import 'package:bookly_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/Widgets/SplashViewBody.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String Id = "SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    NavigattoHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Splashviewbody());
  }

  void NavigattoHome() {
    Timer(const Duration(seconds: 5), () {
      Get.to(() => Homeview(),
          transition: Transition.fadeIn, duration: ktransationduration);
    });
  }
}
