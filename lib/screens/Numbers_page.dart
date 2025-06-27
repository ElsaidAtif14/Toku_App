import 'package:flutter/material.dart';
import 'package:toku/Models/item.dart';
import 'package:toku/components/listitem.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> number = const [
    Item(
      image: "assets/images/numbers/number_one.png",
      jpName: "ichi",
      enName: "one",
      sound: "assets/sounds/numbers/number_one_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "two",
        sound: "assets/sounds/numbers/number_two_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
        sound: "assets/sounds/numbers/number_three_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
        sound: "assets/sounds/numbers/number_four_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
        sound: "assets/sounds/numbers/number_five_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
        sound: "assets/sounds/numbers/number_six_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_seven.png",
      jpName: "Sebun",
      enName: "Seven",
        sound: "assets/sounds/numbers/number_seven_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
        sound: "assets/sounds/numbers/number_eight_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_nine.png",
      jpName: "Ku",
      enName: "Nine",
        sound: "assets/sounds/numbers/number_nine_sound.mp3"
    ),
    Item(
      image: "assets/images/numbers/number_ten.png",
      jpName: "Juu",
      enName: "Ten",
        sound: "assets/sounds/numbers/number_ten_sound.mp3"
    ),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers ", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4A332B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: number.length
        // ignore: avoid_types_as_parameter_names
        ,itemBuilder: (BuildContext context,index){
        return ListItem(data: number[index], color: Color(0xffF89530),);
        
      }
      
      )
    );
  }
}

// List<Widget> getlist(List<Number> numbers){
//   List<Widget> iteamlist=[];

//   for (var i = 0; i < numbers.length; i++) {
//     iteamlist.add(number_item(number: numbers[i]));
//   }
//   return iteamlist;
// }
