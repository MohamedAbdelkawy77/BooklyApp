import 'dart:async';
import 'package:bookly_app/Features/Home/Presentation/Views/HomeView.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/Widgets/SplashViewBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = "/SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigattoHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Splashviewbody());
  }

  void navigattoHome() {
    Timer(const Duration(seconds: 5), () {
      GoRouter.of(context).pushReplacement(Homeview.id);
    });
  }
}
