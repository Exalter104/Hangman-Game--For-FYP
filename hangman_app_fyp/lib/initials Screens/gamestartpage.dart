// import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/initials%20Screens/modes.dart';
import 'package:page_transition/page_transition.dart';

class GameStartPage extends StatefulWidget {
  const GameStartPage({super.key});

  @override
  State<GameStartPage> createState() => _GameStartPageState();
}

class _GameStartPageState extends State<GameStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      body: SafeArea(
        child: Column(
          children: [
            const Image(
                height: 310,
                width: 450,
                image: AssetImage(
                  "images/gallow.png",
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "HANGMAN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            AvatarGlow(
              startDelay: const Duration(milliseconds: 600),
              glowColor: Colors.white,
              endRadius: 130.0,
              duration: const Duration(milliseconds: 1500),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: const Duration(milliseconds: 70),
              child: MaterialButton(
                onPressed: () => Navigator.of(context).push(PageTransition(
                    child: const Modes(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 800),
                    reverseDuration: const Duration(milliseconds: 800))),
                elevation: 20.0,
                shape: const CircleBorder(),
                child: Container(
                  width: 110.0,
                  height: 110.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(160.0)),
                  child: const Text(
                    "PLAY",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
