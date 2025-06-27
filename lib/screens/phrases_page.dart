import 'package:flutter/material.dart';
import 'package:toku/Models/item.dart';
import 'package:toku/components/listitem.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
      jpName: "Kimasu ka",
      enName: "Are you coming",
      sound: "assets/sounds/phrases/are_you_coming.wav",
    ),
    // ignore: missing_required_param
    Item(
      jpName: "dont forget to subscribe ",
      enName: "Channeru tōroku o wasurenaide ne",
      sound: "assets/sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Item(
      jpName: "how are you feeling ?",
      enName: "Kibun wa dō?",
      sound: "assets/sounds/phrases/how_are_you_feeling.wav",
    ),
    Item(
      jpName: "i love anime ",
      enName: "Anime ga daisuki",
      sound: "assets/sounds/phrases/i_love_anime.wav",
    ),
    Item(
      jpName: "i love programming ",
      enName: "Puroguramingu ga daisuki",
      sound: "assets/sounds/phrases/i_love_programming.wav",
    ),
    Item(
      jpName: "programming is easy",
      enName: "Puroguramingu wa kantan da yo",
      sound: "assets/sounds/phrases/programming_is_easy.wav",
    ),
    Item(
      jpName: " what is your name",
      enName: "Onamae wa nan desu ka?",
      sound: "assets/sounds/phrases/what_is_your_name.wav",
    ),
    Item(
      jpName: "where are you going → ",
      enName: "Doko e iku no?",
      sound: "assets/sounds/phrases/where_are_you_going.wav",
    ),
    Item(
      jpName: "yes im coming ",
      enName: "Hai, ikimasu",
      sound: "assets/sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases ", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4A332B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        // ignore: avoid_types_as_parameter_names
        itemBuilder: (BuildContext context, index) {
          return PhraseItem(data: phrases[index], color: Color(0xff47A5CB));
        },
      ),
    );
  }
}
