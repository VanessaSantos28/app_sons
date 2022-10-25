import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void somTocado(int numeroCampanhia) {
    final player = AudioPlayer();
    player.play(
      AssetSource('assets_note$numeroCampanhia.wav'),
    );
  }

  Expanded buildKey({required Color color, required int numeroCampanhia}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          somTocado(numeroCampanhia);
        },
        child: Text(
          '.',
          style: TextStyle(color: Colors.transparent),
        ),
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
            children: [
              buildKey(color: Colors.red, numeroCampanhia: 1),
              buildKey(color: Colors.orange, numeroCampanhia: 2),
              buildKey(color: Colors.yellow, numeroCampanhia: 3),
              buildKey(color: Colors.green, numeroCampanhia: 4),
              buildKey(color: Colors.teal, numeroCampanhia: 5),
              buildKey(color: Colors.blue, numeroCampanhia: 6),
              buildKey(color: Colors.purple, numeroCampanhia: 7),
            ],
          ),
        ),
      ),
    );
  }
}
