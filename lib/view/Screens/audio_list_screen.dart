import 'package:flutter/material.dart';
import 'package:mogab/Core/models/audiomodel.dart';
import 'audio_player_screen.dart';

class MusicListScreen extends StatelessWidget {
  final List<Audiomodel> musicList = [
    // Add your music data here
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
    Audiomodel(
        description: "description",
        path: "audio/winterstorm.mp3",
        title: "Focus"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: musicList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              musicList[index].title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(musicList[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AudioPlayerScreen(
                    category: "Focus",
                    music: musicList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

