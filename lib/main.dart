import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(UrlSource('note1.wave'));
                  player.play(AssetSource('audio/note1.wave'));
                },
                child: Container(
                  height: 100,
                  width: 400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
