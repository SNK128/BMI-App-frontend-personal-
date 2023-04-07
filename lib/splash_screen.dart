import 'package:crieya_works/constants.dart';
import 'package:flutter/material.dart';
import './onboarding_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: AnimatedSplashScreen(
        duration: 3000,
        // splashTransition: SplashTransition.slideTransition,
        //backgroundColor: Colors.greenAccent,
        splash: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_W5Sk67.json'),
        nextScreen: const OnBoardingScreen(),
      ),
    );
  }
}
