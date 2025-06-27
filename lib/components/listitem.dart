import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.data,required this.color});
  final Item data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6dc), child: Image.asset(data.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text(
                  data.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  data.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: 
            IconButton(onPressed: () async {
              // final player=AudioPlayer();
              //  player.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3')
              //);
              try{
                AudioCache.instance=AudioCache(prefix: '');
                final player=AudioPlayer();
                await player.play(AssetSource(data.sound));
              }
              catch(e){
                // ignore: avoid_print
                print(e);
              }
            }, icon: Icon(Icons.play_arrow , color: Colors.white,size: 30,))
         ),
        ],
      ),
    );
  }
}
class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.data, required this.color});
  
  final Item data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  data.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () async {
                try {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource(data.sound));
                } catch (e) {
                  print(e);
                }
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
