import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({Color color, int key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(key);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, key: 1),
                buildKey(color: Colors.orange, key: 2),
                buildKey(color: Colors.yellow, key: 3),
                buildKey(color: Colors.green, key: 4),
                buildKey(color: Colors.teal, key: 5),
                buildKey(color: Colors.blue, key: 6),
                buildKey(color: Colors.purple, key: 7),
              ]),
        ),
      ),
    );
  }
}
