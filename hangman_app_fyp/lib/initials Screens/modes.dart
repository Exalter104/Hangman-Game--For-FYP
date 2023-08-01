import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/countries_category.dart';
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
      backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      body: SafeArea(
        child: Column(
          children: [
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
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 27,
              ),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.gamepad,
                    color: Colors.black,
                    size: 45,
                  ),
                  title: Text(
                    "HANGMAN",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "SELECT MODE",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              indent: 33,
              endIndent: 33,
              color: Color.fromARGB(255, 74, 74, 74),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                // Update the background color for the container

                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 27,
                    ),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        PageTransition(
                          child: const CountryCategory(),
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 600),
                          reverseDuration: const Duration(milliseconds: 600),
                        ),
                      ),
                      child: const Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.gamepad,
                            color: Colors.black,
                            size: 45,
                          ),
                          title: Text(
                            "EASY MODE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "TAP TO PLAY",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 27,
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  PageTransition(
                    child: const AllCAtegories(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600),
                  ),
                ),
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.gamepad,
                      color: Colors.black,
                      size: 45,
                    ),
                    title: Text(
                      "CLASSIC MODE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 28,
                      ),
                    ),
                    subtitle: Text(
                      "TAP TO PLAY",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 27,
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  PageTransition(
                    child: const CountryCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600),
                  ),
                ),
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.gamepad,
                      color: Colors.black,
                      size: 45,
                    ),
                    title: Text(
                      "PRO MODE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 28,
                      ),
                    ),
                    subtitle: Text(
                      "TAP TO PLAY",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
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
