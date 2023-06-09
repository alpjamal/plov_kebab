import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:plov_kebab/screens/home_screen/home_screen.dart';
import 'package:plov_kebab/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(ProjectIcon.splash),
      durationInSeconds: 1,
      navigator: HomeScreen(),
      logoWidth: 100,
      showLoader: false,
    );
  }
}
