// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
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
Color sportsTextColor = const Color.fromARGB(255, 0, 0, 0);
Color fruitsTextColor = const Color.fromARGB(255, 0, 0, 0);
Color languageTextColor = const Color.fromARGB(255, 0, 0, 0);
Color foodsTextColor = const Color.fromARGB(255, 0, 0, 0);

class _AllCAtegoriesState extends State<AllCAtegories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
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
                        radius: 70,
                        backgroundColor: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(180),
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: const CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.transparent,
                            child: Image(
                              image: AssetImage("images/catgif.gif"),
                              width: 140,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
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
                            title: Center(
                              child: Text(
                                "WORD CATEGORIES",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: Center(
                              child: Text(
                                "SELECT CATEGORIES",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
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
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: const AllCAtegories(),
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 600),
                                reverseDuration:
                                    const Duration(milliseconds: 600),
                              ),
                            ),
                            onHover: (bool isHovered) {
                              // Update the text color when hovered
                              setState(() {
                                sportsTextColor = isHovered
                                    ? Colors.red
                                    : const Color.fromARGB(255, 0, 0, 0);
                              });
                            },
                            child: Card(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.play_circle_sharp,
                                  color: Colors.black,
                                  size: 45,
                                ),
                                title: Center(
                                  child: Text(
                                    allCategories[0],
                                    style: TextStyle(
                                      color: sportsTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Center(
                                  child: Text(
                                    "TAP TO PLAY",
                                    style: TextStyle(
                                      color: sportsTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
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
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: const AllCAtegories(),
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 600),
                                reverseDuration:
                                    const Duration(milliseconds: 600),
                              ),
                            ),
                            onHover: (bool isHovered) {
                              // Update the text color when hovered
                              setState(() {
                                fruitsTextColor = isHovered
                                    ? Colors.red
                                    : const Color.fromARGB(255, 0, 0, 0);
                              });
                            },
                            child: Card(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.play_circle_sharp,
                                  color: Colors.black,
                                  size: 45,
                                ),
                                title: Center(
                                  child: Text(
                                    allCategories[1],
                                    style: TextStyle(
                                      color: fruitsTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Center(
                                  child: Text(
                                    "TAP TO PLAY",
                                    style: TextStyle(
                                      color: fruitsTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
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
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: const AllCAtegories(),
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 600),
                                reverseDuration:
                                    const Duration(milliseconds: 600),
                              ),
                            ),
                            onHover: (bool isHovered) {
                              // Update the text color when hovered
                              setState(() {
                                languageTextColor = isHovered
                                    ? Colors.red
                                    : const Color.fromARGB(255, 0, 0, 0);
                              });
                            },
                            child: Card(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.play_circle_sharp,
                                  color: Colors.black,
                                  size: 45,
                                ),
                                title: Center(
                                  child: Text(
                                    allCategories[2],
                                    style: TextStyle(
                                      color: languageTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Center(
                                  child: Text(
                                    "TAP TO PLAY",
                                    style: TextStyle(
                                      color: languageTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
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
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              PageTransition(
                                child: const AllCAtegories(),
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 600),
                                reverseDuration:
                                    const Duration(milliseconds: 600),
                              ),
                            ),
                            onHover: (bool isHovered) {
                              // Update the text color when hovered
                              setState(() {
                                foodsTextColor = isHovered
                                    ? Colors.red
                                    : const Color.fromARGB(255, 0, 0, 0);
                              });
                            },
                            child: Card(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.play_circle_sharp,
                                  color: Colors.black,
                                  size: 45,
                                ),
                                title: Center(
                                  child: Text(
                                    allCategories[3],
                                    style: TextStyle(
                                      color: foodsTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Center(
                                  child: Text(
                                    "TAP TO PLAY",
                                    style: TextStyle(
                                      color: foodsTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]))));
  }
}
