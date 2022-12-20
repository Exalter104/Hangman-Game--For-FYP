import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/Utils/game_utils.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/animal_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/countries_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/foods_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/fruits_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/languages_category.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/sports.dart';
import 'package:page_transition/page_transition.dart';

class CategoryMode extends StatefulWidget {
  const CategoryMode({super.key});

  @override
  State<CategoryMode> createState() => _CategoryModeState();
}

List<String> categories = [
  "ANIMALS",
  "COUNTRIES",
  "FOODS",
  "FRUITS",
  "LANGUAGE",
  "SPORTS",
];

class _CategoryModeState extends State<CategoryMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                "Words Categories",
                style: gameTextStyle(20, Colors.white, FontWeight.bold),
              ),
            )),
        backgroundColor: const Color.fromARGB(255, 118, 118, 118),
        // ignore: unnecessary_new
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
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
                  width: 450,
                  height: 250,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const AnimalCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[0],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const CountryCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[1],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const FoodCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[2],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const FruitsCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[3],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const LanguageCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[4],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(PageTransition(
                    child: const SportsCategory(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600))),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Center(
                    heightFactor: 4.2,
                    child: Text(
                      categories[5],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
