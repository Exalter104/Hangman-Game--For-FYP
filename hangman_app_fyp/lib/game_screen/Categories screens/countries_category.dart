import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/Utils/game_utils.dart';
import 'package:hangman_app_fyp/game_screen/hangman_database.dart';
// import 'package:hangman_app_fyp/game_screen/categoryscreen.dart';
import 'package:hangman_app_fyp/initials%20Screens/gamestartpage.dart';

class CountryCategory extends StatefulWidget {
  const CountryCategory({super.key});

  @override
  State<CountryCategory> createState() => _CountryCategoryState();
}

//images for words

class _CountryCategoryState extends State<CountryCategory> {
  String? selectedValue;
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  Timer? _timer;
  int _secondsRemaining = 30; // Change the time as per your requirement
  void restartTimer() {
    setState(() {
      _secondsRemaining = 30; // Set the initial time as per your requirement
    });
    _timer?.cancel();
    startTimer();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        if (_secondsRemaining == 0) {
          _timer!.cancel();
          // Handle the game loss condition here
          wrongDilog("Time's up!");
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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

  String randomWordGenerate =
      countriesList[Random().nextInt(countriesList.length)];

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
                                restartTimer(); // Restart the timer here

                                // score = 0;
                                guessWord.clear();
                                randomWordGenerate = countriesList[
                                    Random().nextInt(countriesList.length)];
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

                                  randomWordGenerate = countriesList[
                                      Random().nextInt(countriesList.length)];
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
                                randomWordGenerate = countriesList[
                                    Random().nextInt(countriesList.length)];

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
    String hint = randomWordGenerate[0];
    displayword += hint;
    for (var i = 1; i < randomWordGenerate.length; i++) {
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
    for (var i = 1; i < randomWordGenerate.length; i++) {
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
        "Levels is Finshed\n Good Luck for External Presentation ",
      );
    }
  }

  bool isButtonActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),

// Appbar

        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 21, 26, 74),
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
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 1,
                      ),
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: const BorderRadius.only(
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
                // const Text('data'),

                // Timer Module
                Container(
                  // Customize the styling as per your preference
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1,
                    ),
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 4.0,
                  height: 50,
                  child: Text(
                    "Time: $_secondsRemaining s",
                    style: gameTextStyle(
                      20,
                      const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.bold,
                    ),
                  ),
                ),
              ]),
              const Row(
                children: [],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1,
                    ),
                    color: const Color.fromARGB(255, 0, 0, 0)),
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 1,
                          ),
                          color: const Color.fromARGB(255, 0, 0, 0)),
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
                            const Color.fromARGB(255, 255, 255, 255),
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

              Text(hangmanWord(),
                  style: gameTextStyle(
                      40,
                      const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.bold)),

              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 7,
                  shrinkWrap: true,

                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1,

// keyboard maping Module

                  children: letters.map((alphabits) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        child: Padding(
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
                                  const Color.fromARGB(255, 255, 255, 255),
                                  FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ])));
  }
}
