import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_app_fyp/initials%20Screens/gamestartpage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).push(PageTransition(
            child: const GameStartPage(),
            type: PageTransitionType.rightToLeft,
            duration: const Duration(milliseconds: 800),
            reverseDuration: const Duration(milliseconds: 800))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage("images/gallow.png")),
          const SizedBox(
            height: 140,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40.0,
              fontFamily: 'Horizon',
            ),
            child: Center(
              child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'HANGMAN',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const GameStartPage(),
                      type: PageTransitionType.leftToRight,
                      duration: const Duration(milliseconds: 800),
                      reverseDuration: const Duration(milliseconds: 800)))),
            ),
          )
        ],
      ),
    );
  }
}
