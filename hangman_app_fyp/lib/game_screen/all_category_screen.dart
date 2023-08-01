// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/food_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/fruits_categories.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/language_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/sports_category.dart';
import 'package:page_transition/page_transition.dart';

class AllCAtegories extends StatefulWidget {
  const AllCAtegories({super.key});

  @override
  State<AllCAtegories> createState() => _AllCAtegoriesState();
}

List<String> allCategories = [
  "SPORTS",
  "FRUITS",
  // "COUNTRIES",
  "LANGUAGE",
  "FOODS"
];

class _AllCAtegoriesState extends State<AllCAtegories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 21, 26, 74),
        ),
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),
        // ignore: unnecessary_new
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        border: Border.all(width: 2, color: Colors.white)),
                    child: const CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.transparent,
                      child: Image(
                        image: AssetImage("images/catgif.gif"),
                        width: 390,
                        height: 250,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
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
                          Icons.move_down_rounded,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Text(
                          "WORDS CATEGORIES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 28,
                          ),
                        ),
                        subtitle: Text(
                          "SELECT BELOW CATEGORIES",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  indent: 33,
                  endIndent: 33,
                  color: Color.fromARGB(255, 130, 125, 125),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: const SportCategory(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                      ),
                    ),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.play_circle_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Text(
                          allCategories[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 28,
                          ),
                        ),
                        subtitle: const Text(
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
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: const FruitsCategory(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                      ),
                    ),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.play_circle_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Text(
                          allCategories[1],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 28,
                          ),
                        ),
                        subtitle: const Text(
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
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: const LanguageCategory(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                      ),
                    ),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.play_circle_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Text(
                          allCategories[2],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 28,
                          ),
                        ),
                        subtitle: const Text(
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
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 27,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: const FoodCategory(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                      ),
                    ),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.play_circle_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Text(
                          allCategories[3],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 28,
                          ),
                        ),
                        subtitle: const Text(
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
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ));
  }
}
