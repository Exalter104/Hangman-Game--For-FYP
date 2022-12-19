// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_app_fyp/game_screen/categoryscreen.dart';
import 'package:page_transition/page_transition.dart';

import '../Utils/game_utils.dart';

class Modes extends StatefulWidget {
  const Modes({super.key});

  @override
  State<Modes> createState() => _ModesState();
}

class _ModesState extends State<Modes> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(children: [
        const Image(
            height: 400,
            width: 400,
            image: AssetImage(
              "images/gallow.png",
            )),
        Text(
          "HANGMAN",
          style: GoogleFonts.abel(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => Navigator.of(context).push(PageTransition(
                        child: const CategoryMode(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600))),
                    child: Center(
                        child: Text(
                      "Easy Mode",
                      style: gameTextStyle(20,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ))),
              ),
            ])),
        Container(
          height: 48,
          margin: const EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width / 2,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                null;
              },
              // Navigator.of(context).push(PageTransition(
              //     child: const(){},
              //     type: PageTransitionType.rightToLeft,
              //     duration: const Duration(milliseconds: 600),
              //     reverseDuration: const Duration(milliseconds: 600))),
              child: Center(
                  child: Text(
                "Classic Mode",
                style: gameTextStyle(
                    20, const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
              ))),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 48,
          margin: const EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width / 2,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () => null,
              // Navigator.of(context).push(PageTransition(
              //     child: const GameStartPage(),
              //     type: PageTransitionType.rightToLeft,
              //     duration: const Duration(milliseconds: 600),
              //     reverseDuration: const Duration(milliseconds: 600))),
              child: Center(
                  child: Text(
                "Pro Mode",
                style: gameTextStyle(
                    20, const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
              ))),
        ),
      ])),
    );
  }
}
