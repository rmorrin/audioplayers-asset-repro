import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  AudioPlayer.logEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audioplayers Repro',
      home: Scaffold(
        body: Center(
          child: TextButton(
            child: Text('Play Sound'),
            onPressed: () {
              final player = AudioCache();
              player.play('bell.mp3');
            },
          ),
        ),
      ),
    );
  }
}
