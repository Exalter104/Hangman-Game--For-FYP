import 'package:flutter/material.dart';
import 'package:hangman_app_fyp/game_screen/Categories%20screens/fruits_categories.dart';
import 'package:hangman_app_fyp/game_screen/all_category_screen.dart';
import 'package:page_transition/page_transition.dart';

class Modes extends StatefulWidget {
  const Modes({Key? key}) : super(key: key);

  @override
  State<Modes> createState() => _ModesState();
}

class _ModesState extends State<Modes> {
  String? selectedValue;
  Color classicModeTextColor = const Color.fromARGB(255, 0, 0, 0);
  Color proModeTextColor = const Color.fromARGB(255, 0, 0, 0);
  Color easyModeTextColor = const Color.fromARGB(255, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 26, 74),
      ),
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
                height: 270,
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
                  title: Center(
                    child: Text(
                      "HANGMAN",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      "SELECT MODE",
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
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          PageTransition(
                            child: const FruitsCategory(),
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 600),
                            reverseDuration: const Duration(milliseconds: 600),
                          ),
                        ),
                        onHover: (bool isHovered) {
                          // Update the text color when hovered
                          setState(() {
                            easyModeTextColor = isHovered
                                ? Colors.red
                                : const Color.fromARGB(255, 0, 0, 0);
                          });
                        },
                        child: Card(
                          child: ListTile(
                            leading: const Icon(
                              Icons.gamepad,
                              color: Colors.black,
                              size: 45,
                            ),
                            title: Center(
                              child: Text(
                                "EASY MODE",
                                style: TextStyle(
                                  color: easyModeTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: Center(
                              child: Text(
                                "TAP TO PLAY",
                                style: TextStyle(
                                  color: easyModeTextColor,
                                  fontSize: 16,
                                ),
                              ),
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
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      PageTransition(
                        child: const AllCAtegories(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                      ),
                    ),
                    onHover: (bool isHovered) {
                      // Update the text color for "CLASSIC MODE" when hovered
                      setState(() {
                        classicModeTextColor = isHovered
                            ? Colors.red
                            : const Color.fromARGB(255, 0, 0, 0);
                      });
                    },
                    child: Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.gamepad,
                          color: Colors.black,
                          size: 45,
                        ),
                        title: Center(
                          child: Text(
                            "CLASSIC MODE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: classicModeTextColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "TAP TO PLAY",
                            style: TextStyle(
                              color: classicModeTextColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 27,
              ),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () => Navigator.of(context).push(
                    PageTransition(
                      child: const Modes(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600),
                    ),
                  ),
                  onHover: (bool isHovered) {
                    // Change the color when hovered
                    // Example: You can use a different color when hovered
                    // Replace the color with your desired color
                    // For example, Colors.red when hovered, Colors.black when not hovered
                    // You can customize this based on your design preferences
                    setState(() {
                      proModeTextColor = isHovered
                          ? Colors.red
                          : const Color.fromARGB(255, 0, 0, 0);
                    });
                  },
                  child: Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.gamepad,
                        color: Colors.black,
                        size: 45,
                      ),
                      title: Center(
                        child: Text(
                          "PRO MODE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                proModeTextColor, // Use the textColor variable here
                            fontSize: 20,
                          ),
                        ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "TAP TO PLAY",
                          style: TextStyle(
                            color:
                                proModeTextColor, // Use the textColor variable here
                            fontSize: 16,
                          ),
                        ),
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
