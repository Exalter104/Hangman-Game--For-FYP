import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

import '../game_screen/gamescreen.dart';

class GameStartPage extends StatefulWidget {
  const GameStartPage({super.key});

  @override
  State<GameStartPage> createState() => _GameStartPageState();
}

class _GameStartPageState extends State<GameStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Image(
                height: 480,
                width: 450,
                image: AssetImage(
                  "images/gallow.png",
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              "HANGMAN",
              style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 48,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameScreen()));
                },
                elevation: 20.0,
                shape: const CircleBorder(),
                child: Container(
                  width: 140.0,
                  height: 140.0,
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
