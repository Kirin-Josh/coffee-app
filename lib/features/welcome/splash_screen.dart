import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffee_delivery/features/welcome/get_started.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset('assets/splash.json', height: 300, width: 300),
      ),
      splashIconSize: 500,
      nextScreen: GetStarted(),
      duration: 800,
    );
  }
}
