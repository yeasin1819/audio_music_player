import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicPlay());
}

class MusicPlay extends StatelessWidget {
  Widget musicPlayer(musicName, backgroundColor) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(1.0),
        child: FlatButton(
          color: backgroundColor,
          child: Text('Click Me', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          onPressed: () {
            AudioCache().play(musicName);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            musicPlayer('note1.wav', Colors.red),
            musicPlayer('note2.wav', Colors.green),
            musicPlayer('note3.wav', Colors.redAccent),
            musicPlayer('note4.wav', Colors.greenAccent),
            musicPlayer('note5.wav', Colors.deepOrange),
            musicPlayer('note6.wav', Colors.purple),
            musicPlayer('note7.wav', Colors.pink),
          ],
        )),
      ),
    );
  }
}
