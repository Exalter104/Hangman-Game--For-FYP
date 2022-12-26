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
                    child: const SportCategory(),
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
                      allCategories[0],
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
                      allCategories[1],
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
                      allCategories[2],
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
                      allCategories[3],
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
                      allCategories[4],
                      style: gameTextStyle(17,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
