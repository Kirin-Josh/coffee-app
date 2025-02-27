import 'package:coffee_delivery/features/welcome/splash_screen.dart';
import 'package:coffee_delivery/features/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: AppColors.mainColor),
      home: SplashScreen(),
    );
  }
}
