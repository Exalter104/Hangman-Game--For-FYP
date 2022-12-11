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
  // String gamelevel=[];
  String randomWordGenerate = wordlist[Random().nextInt(wordlist.length)];
  var guessWord = [];

  int status = 0;
  List gameImages = [
    "images/0.png",
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
  ];
  openDiloge(String title) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: gameTextStyle(24,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
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
                              randomWordGenerate =
                                  wordlist[Random().nextInt(wordlist.length)];
                            });
                          },
                          child: Center(
                              child: Text(
                            "Play Again",
                            style: gameTextStyle(
                                20, Colors.white, FontWeight.bold),
                          ))),
                    )
                  ],
                )),
          );
        });
  }

  closeDiloge() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Reached to Highest Rank,Good luck to 60%",
                      style: gameTextStyle(24,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text(
                    //   "You Win",
                    //   style: gameTextStyle(20, Colors.white, FontWeight.bold),
                    //   textAlign: TextAlign.center,
                    // ),
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

  int levels = 1;
  hangmanWord() {
    String displayWord = "";
    for (var i = 0; i < randomWordGenerate.length; i++) {
      String addAlphas = randomWordGenerate[i];
      if (guessWord.contains(addAlphas)) {
        displayWord += "$addAlphas ";
      } else {
        displayWord += "?";
      }
    }
    return displayWord;
  }

  checkthatAlphs(alphabits) {
    if (randomWordGenerate.contains(alphabits)) {
      setState(() {
        guessWord.add(alphabits);
      });
    } else if (status != 6) {
      setState(() {
        status += 1;
      });
    } else {
      openDiloge(
        "You lose",
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
      openDiloge("You Win");
    }
    if (isWon) {
      setState(() {
        levels++;
      });
    }
    if (levels >= 4) {
      closeDiloge();
      // openDiloge("Levels is Finshed\n Good Luck for 60% ");
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const GameStartPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 19, 19, 19),
            title: Center(
              child: Text(
                "Hangman Game Fyp",
                style: gameTextStyle(20, Colors.white, FontWeight.bold),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                  ))
            ]),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    margin: const EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 50,
                    child: Text(
                      "${6 - status} Lives Lift",
                      style: gameTextStyle(20,
                          const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image(
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
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 50,
                            child: Text(
                              "levels $levels ",
                              // "HINT : ANIMAL CATEGORY",
                              style: gameTextStyle(
                                  20,
                                  const Color.fromARGB(255, 0, 0, 0),
                                  FontWeight.bold),
                            ))

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
                    style: gameTextStyle(20, Colors.white, FontWeight.bold),
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
                        padding: const EdgeInsets.only(left: 22),
                        child: InkWell(
                          onTap: () {
                            checkthatAlphs(alphabits);
                          },
                          child: Center(
                            child: Text(
                              alphabits,
                              style: gameTextStyle(
                                  20, Colors.white, FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ]))));
  }
}
