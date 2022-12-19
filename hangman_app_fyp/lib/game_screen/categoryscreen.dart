import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryMode extends StatefulWidget {
  const CategoryMode({super.key});

  @override
  State<CategoryMode> createState() => _CategoryModeState();
}

class _CategoryModeState extends State<CategoryMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "HANGMAN CATEGORIES",
          style: GoogleFonts.abel(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return const Card(
                  child: ListTile(
                      leading: Icon(Icons.list),
                      trailing: Text(
                        "GFG",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text("List item")),
                );
              }),
        ]),
      ),
    );
  }
}
