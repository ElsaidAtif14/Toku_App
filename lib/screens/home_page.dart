import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/Colors_page.dart';
import 'package:toku/screens/Numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D9),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A332B),
        elevation: 4,
        centerTitle: true,
        title: Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),


      body: Column(
        children: [
          category(
            text: "Numbers",
            color: Color(0xffF89530),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          category(
            text: "Family Members",
            color: Color(0xff518030),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyMemberPage();
                  },
                ),
              );
            },
          ),
          category(
            text: "Colors",
            color: Color(0xff7D3FA2),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Phrases',
            color: Color(0xff47A5CB),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
