// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/countries_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/food_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/fruits_categories.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/sports_category.dart';
import 'package:page_transition/page_transition.dart';

import '../Utils/game_utils.dart';
import 'Categories screens/language_category.dart';

class AllCAtegories extends StatefulWidget {
  const AllCAtegories({super.key});

  @override
  State<AllCAtegories> createState() => _AllCAtegoriesState();
}

List<String> allCategories = [
  "SPORTS",
  "FRUITS",
  "COUNTRIES",
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
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Image(
                    image: AssetImage("images/catoo.png"),
                    width: 390,
                    height: 250,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 16)),
                    Text(
                      "Words Categories",
                      style: gameTextStyle(30, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const SportCategory(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600))),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Center(
                      heightFactor: 3.4,
                      child: Text(
                        allCategories[0],
                        style: gameTextStyle(
                            19,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const FruitsCategory(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600))),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Center(
                      heightFactor: 3.4,
                      child: Text(
                        allCategories[1],
                        style: gameTextStyle(
                            19,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const CountryCategory(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600))),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Center(
                      heightFactor: 3.4,
                      child: Text(
                        allCategories[2],
                        style: gameTextStyle(
                            19,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const LanguageCategory(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600))),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Center(
                      heightFactor: 3.4,
                      child: Text(
                        allCategories[3],
                        style: gameTextStyle(
                            19,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(PageTransition(
                      child: const FoodCategory(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600))),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Center(
                      heightFactor: 3.4,
                      child: Text(
                        allCategories[4],
                        style: gameTextStyle(
                            19,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
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
