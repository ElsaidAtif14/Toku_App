import 'package:flutter/material.dart';
import 'package:toku/Models/item.dart';
import 'package:toku/components/listitem.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
    final List<Item> colors = const [
    Item(
      image: "assets/images/colors/color_black.png",
      jpName: "Kuro",
      enName: "Black",
      sound: "assets/sounds/colors/black.wav"
    ),
  Item(
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "Brown",
      sound: "assets/sounds/colors/brown.wav"
    ),
    Item(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Kusunda kiiro",
      enName: "Dusty Yellow",
      sound: "assets/sounds/colors/dusty yellow.wav"
    ),
    Item(
      image: "assets/images/colors/color_gray.png",
      jpName: "Haiiro",
      enName: "Gray",
      sound: "assets/sounds/colors/gray.wav"
    ),
    Item(
      image: "assets/images/colors/color_green.png",
      jpName: "Midori",
      enName: "Green",
      sound: "assets/sounds/colors/green.wav"
    ),
    Item(
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "Red",
      sound: "assets/sounds/colors/red.wav"
    ),
    Item(
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "White",
      sound: "assets/sounds/colors/white.wav"
    ),
     Item(
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "Yellow",
      sound: "assets/sounds/colors/yellow.wav"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors ", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4A332B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: colors.length
        // ignore: avoid_types_as_parameter_names
        ,itemBuilder: (BuildContext context,index){
        return ListItem(data: colors[index], color: Color(0xff7D3FA2),);
        
      }
      
      )
    );
  }
}
