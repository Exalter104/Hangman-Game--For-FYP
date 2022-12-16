import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/Utils/game_utils.dart';

import '../initials Screens/gamestartpage.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List gameImages = [
    "images/0.png",
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
  ];

  var guessWord = [];
  int levels = 1;
  // String gamelevel=[];
  String randomWordGenerate = wordlist[Random().nextInt(wordlist.length)];

  int score = 0;
  int status = 0;
  wrongDilog(var title, score) {
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
                        title,
                        style: gameTextStyle(
                            24,
                            const Color.fromARGB(255, 255, 255, 255),
                            FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        score,
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
                                score = 0;
                                guessWord.clear();
                                randomWordGenerate =
                                    wordlist[Random().nextInt(wordlist.length)];
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

  openDiloge(
    var title,
    score,
  ) {
    if (levels <= 3) {
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
                        "images/win4.gif",
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
                      Text(
                        score,
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
                                score = 0;
                                guessWord.clear();
                                randomWordGenerate =
                                    wordlist[Random().nextInt(wordlist.length)];
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
                  )),
            );
          });
    } else {
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
                        "You Reached to Highest Rank,Good luck to 60%",
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
                        margin: const EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width / 2,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                status = 0;
                                guessWord.clear();
                                levels = 0;
                                randomWordGenerate =
                                    wordlist[Random().nextInt(wordlist.length)];
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
                                  20, Colors.white, FontWeight.bold),
                            ))),
                      )
                    ],
                  )),
            );
          });
    }
  }

  hangmanWord() {
    String displayWord = "";
    for (var i = 0; i < randomWordGenerate.length; i++) {
      String addAlphas = randomWordGenerate[i];
      if (guessWord.contains(addAlphas)) {
        displayWord += "$addAlphas ";
      } else {
        displayWord += "-";
      }
    }
    return displayWord;
  }

  checkthatAlphs(alphabits) {
    if (randomWordGenerate.contains(alphabits)) {
      setState(() {
        guessWord.add(alphabits);
        score += 10;
      });
    } else if (status != 6) {
      setState(() {
        status += 1;
      });
    } else {
      wrongDilog(
        "You lose",
        "score :$score",
      );
    }
    bool isWon = true;
    for (var i = 0; i < randomWordGenerate.length; i++) {
      String addAlphas = randomWordGenerate[i];
      if (!guessWord.contains(addAlphas)) {
        setState(() {
          isWon = false;
        });
        break;
      }
    }
    if (isWon) {
      openDiloge(
        "You Win",
        "score :$score",
      );
    }
    if (isWon) {
      setState(() {
        if (score >= 70) {
          levels++;
        } else if (score >= 100) {
          levels++;
        } else if (score >= 140) {
          levels++;
        }
      });
    }
    if (levels >= 4) {
      // closeDiloge();
      // openDiloge(title, score);
      openDiloge(
        "Levels is Finshed\n Good Luck for 60% ",
        score,
      );
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const GameStartPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                  child: Text(
                    "Hints ",
                    style: gameTextStyle(
                        20,
                        const Color.fromARGB(255, 255, 255, 255),
                        FontWeight.bold),
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
                      child: Text(
                        "levels $levels  ",
                        // "HINT : ANIMAL CATEGORY",
                        style: gameTextStyle(
                            20,
                            const Color.fromARGB(255, 0, 0, 0),
                            FontWeight.bold),
                      ),
                    )

                    // Container(

                    // )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                children: letters.map((alphabits) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        checkthatAlphs(alphabits);
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
