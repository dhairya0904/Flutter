import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Xylophone",
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.
        ),
      ),
    );
  }

  List<Widget> getAllkeys() {
    List<Widget> keys = new List();

    for (int i = 1; i < 8; i++) {
      keys.add(Expanded(
        child: FlatButton(
          onPressed: () {
            player.play("note$i.wav");
          },
          color: i % 2 == 0 ? Colors.black : Colors.white,
        ),
      ));
    }
    return keys;
  }
}
