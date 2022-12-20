import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/Utils/game_utils.dart';
import 'package:hangman_app_fyp/game_screen/categoryscreen.dart';
import 'package:hangman_app_fyp/initials%20Screens/gamestartpage.dart';

class FruitsCategory extends StatefulWidget {
  const FruitsCategory({super.key});

  @override
  State<FruitsCategory> createState() => _FruitsCategoryState();
}

//images for words

class _FruitsCategoryState extends State<FruitsCategory> {
  List gameImages = [
    "images/0.png",
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
  ];

// false word dilogue
  int levels = 1;
  var hintsword = [];
// random word genertor

  String randomWordGenerate = fruitsList[Random().nextInt(fruitsList.length)];

  int score = 0;
  int status = 0;
// adding the words in array list
  var hintList = [];
  var guessWord = [];
  wrongDilog(var title) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/ulose.gif",
                        height: 125.0,
                        width: 125.0,
                      ),
                      Text(
                        " Previous Score : $score",
                        style: gameTextStyle(
                            24,
                            const Color.fromARGB(255, 255, 255, 255),
                            FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        title,
                        style: gameTextStyle(
                            24,
                            const Color.fromARGB(255, 255, 255, 255),
                            FontWeight.bold),
                        textAlign: TextAlign.center,
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                status = 0;
                                // score = 0;
                                guessWord.clear();
                                randomWordGenerate = fruitsList[
                                    Random().nextInt(fruitsList.length)];
                              });
                            },
                            child: Center(
                                child: Text(
                              "Play Again",
                              style: gameTextStyle(
                                  20,
                                  const Color.fromARGB(255, 0, 0, 0),
                                  FontWeight.bold),
                            ))),
                      ),
                    ],
                  )));
        });
  }

// true word dilogue

  openDiloge(
    var title,
  ) {
    if (levels <= 3) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.black,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 280,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/win2.gif",
                          height: 125.0,
                          width: 125.0,
                        ),
                        Text(
                          title,
                          style: gameTextStyle(
                              24,
                              const Color.fromARGB(255, 255, 255, 255),
                              FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Score : $score",
                          style: gameTextStyle(
                              24,
                              const Color.fromARGB(255, 255, 255, 255),
                              FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 48,
                          margin: const EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width / 2,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {
                                  status = 0;
                                  guessWord.clear();
                                  // score = 0;

                                  randomWordGenerate = fruitsList[
                                      Random().nextInt(fruitsList.length)];
                                });
                              },
                              child: Center(
                                  child: Text(
                                "Play Again",
                                style: gameTextStyle(
                                    20,
                                    const Color.fromARGB(255, 0, 0, 0),
                                    FontWeight.bold),
                              ))),
                        ),
                      ],
                    )));
          });
    }

// 3 level reached

    else {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/gameover.gif",
                        height: 125.0,
                        width: 125.0,
                      ),
                      Text(
                        title,
                        style: gameTextStyle(
                            24,
                            const Color.fromARGB(255, 255, 255, 255),
                            FontWeight.bold),
                        textAlign: TextAlign.center,
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                status = 0;
                                guessWord.clear();
                                levels = 0;
                                randomWordGenerate = fruitsList[
                                    Random().nextInt(fruitsList.length)];

                                // () => Navigator.of(context).push(PageTransition(
                                //     child: const GameStartPage(),
                                //     type: PageTransitionType.rightToLeft,
                                //     duration: const Duration(milliseconds: 600),
                                //     reverseDuration:
                                //         const Duration(milliseconds: 600)));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GameStartPage()));
                              });
                            },
                            child: Center(
                                child: Text(
                              "Game End",
                              style: gameTextStyle(
                                  20,
                                  const Color.fromARGB(255, 0, 0, 0),
                                  FontWeight.bold),
                            ))),
                      )
                    ],
                  )),
            );
          });
    }
  }

  hangmanWord() {
    String displayword = "";
    for (var i = 0; i < randomWordGenerate.length; i++) {
      String storedWord = randomWordGenerate[i];
      if (guessWord.contains(storedWord)) {
        // print(guessWord);
        displayword += storedWord;
      } else {
        displayword += "__ ";
      }
    }
    return displayword;
  }

// display words

  checkKeyPress(pressword) {
    if (randomWordGenerate.contains(pressword)) {
      setState(() {
        guessWord.add(pressword);
        score += 10;
      });
    } else if (status != 6) {
      setState(() {
        status += 1;
      });
    } else {
      wrongDilog(
        "You lose",
      );
    }
    bool isWin = true;
    for (var i = 0; i < randomWordGenerate.length; i++) {
      String storedWord = randomWordGenerate[i];
      if (!guessWord.contains(storedWord)) {
        setState(() {
          isWin = false;
        });
        break;
      }
    }
    if (isWin) {
      openDiloge("You Win");
    }
    if (isWin) {
      setState(() {
        if (score > 80) {
          levels++;
        } else if (score > 130) {
          levels++;
        } else if (score > 190) {
          levels++;
        }
      });
    }
    if (levels > 3) {
      openDiloge(
        "Levels is Finshed\n Good Luck for 60% ",
      );
    }
  }

  bool isButtonActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

// Appbar

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          title: Center(
            child: Text(
              "Hangman Game ",
              style: gameTextStyle(20, Colors.white, FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 4.0,
                  height: 50,

// Score Module

                  child: Text(
                    "Score : $score ",
                    style: gameTextStyle(
                        20,
                        const Color.fromARGB(255, 255, 255, 255),
                        FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0))),
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 4.0,
                  height: 50,

// Hints Module

                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      categories[3],
                      style: gameTextStyle(
                          20,
                          const Color.fromARGB(255, 255, 255, 255),
                          FontWeight.bold),
                    ),
                  ),
                ),
              ]),
              Row(
                children: const [],
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                margin: const EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 50,

// try lift Module

                child: Text(
                  "${6 - status} Try Lift",
                  style: gameTextStyle(
                      20,
                      const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image(
                  color: Colors.black,
                  fit: BoxFit.cover,
                  height: 180,
                  width: 180,
                  image: AssetImage(gameImages[status])),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      margin: const EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 50,

// Levels Module

                      child: Text(
                        "Levels $levels  ",
                        // "HINT : ANIMAL CATEGORY",
                        style: gameTextStyle(
                            20,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    ),

                    // Container(

                    // )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

// Core Display Logic Module

              Text(
                hangmanWord(),
                style: gameTextStyle(
                    35, const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.count(
                crossAxisCount: 7,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1.1,

// keyboard maping Module

                children: letters.map((alphabits) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        checkKeyPress(alphabits);
                      },
                      child: Center(
                        child: Text(
                          alphabits,
                          style: gameTextStyle(
                            20,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ])));
  }
}
