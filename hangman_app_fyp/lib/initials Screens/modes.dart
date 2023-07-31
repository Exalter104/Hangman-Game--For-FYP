import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/sports_category.dart';
import 'package:hangman_app_fyp/game_screen/all_category_screen.dart';
import 'package:page_transition/page_transition.dart';

class Modes extends StatefulWidget {
  const Modes({Key? key}) : super(key: key);

  @override
  State<Modes> createState() => _ModesState();
}

class _ModesState extends State<Modes> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: const Image(
                height: 400,
                width: 400,
                image: AssetImage("images/gallow.png"),
              ),
            ),
            const Text(
              "HANGMAN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                // Update the background color for the container

                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Container(
                    height: 54,
                    margin: const EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).push(
                        PageTransition(
                          child: const SportCategory(),
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 600),
                          reverseDuration: const Duration(milliseconds: 600),
                        ),
                      ),
                      child: const Text(
                        "Easy Mode",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 54,
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width / 1.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () => Navigator.of(context).push(
                  PageTransition(
                    child: const AllCAtegories(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600),
                  ),
                ),
                child: const Text(
                  "Classic Mode",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 54,
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width / 1.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Add functionality for Pro Mode
                },
                child: const Text(
                  "Pro Mode",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
