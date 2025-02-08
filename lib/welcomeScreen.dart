import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/homePage.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 4000,
        splashIconSize: double.maxFinite,
        backgroundColor: Colors.black,
        splash: Center(
          child: Lottie.asset('assets/gif/Basketball Player.json'),
        ),
        nextScreen: HomePage());
  }
}
