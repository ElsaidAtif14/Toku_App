import 'package:flutter/material.dart';
import 'package:toku/components/listitem.dart';
// import 'package:toku/screens/home_page.dart';

import '../Models/item.dart';
class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List< Item> familymembers = const [
    Item(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichi",
        enName: "Father",
        sound: "assets/sounds/family_members/father.wav"
    ),
    Item(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Haha",
        enName: "Mother",
        sound: "assets/sounds/family_members/mother.wav"
    ),
   Item(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojiisan",
        enName: "Grand Father",
        sound: "assets/sounds/family_members/grand father.wav"
    ),
    Item(
         image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobu",
        enName: "Grand Mother",
        sound: "assets/sounds/family_members/grand mother.wav"
    ),
    Item(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "Son ",
        sound: "assets/sounds/family_members/son.wav"
    ),
    Item(
       image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter",
        sound: "assets/sounds/family_members/daughter.wav"
    ),
    Item(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Onisan",
        enName: "Older Brother",
        sound: "assets/sounds/family_members/older bother.wav"
    ),
     Item(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Older sister",
        sound: "assets/sounds/family_members/older sister.wav"
    ),
    Item(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Ototo",
        enName: "Younger Brother",
        sound: "assets/sounds/family_members/younger brohter.wav"
    ),
    Item(
       image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imoto",
        enName: "Younger sister",
        sound: "assets/sounds/family_members/younger sister.wav"
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Family Member",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF4A332B),
      ),
    body: ListView.builder(
    itemCount: familymembers.length
    // ignore: avoid_types_as_parameter_names
    ,itemBuilder: (BuildContext context,index){
    return ListItem(data: familymembers[index], color: Color(0xff518030),);

    }
    ));

  }
}
