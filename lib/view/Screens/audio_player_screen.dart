import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:mogab/Core/models/audiomodel.dart';

class AudioPlayerScreen extends StatefulWidget {
  final Audiomodel music;
  final String category;

  const AudioPlayerScreen(
      {Key? key, required this.music, required this.category})
      : super(key: key);

  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer _player;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.category == 'Noise Off' || widget.category == 'Focus'
            ? Text(widget.category)
            : Text(widget.music.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.category == 'Noise Off' || widget.category == 'Focus'
                ? ''
                : widget.music.title),
            Text(widget.category == 'Noise Off' || widget.category == 'Focus'
                ? ''
                : widget.music.title),
            ElevatedButton(
              onPressed: () async {
                if (isPlaying) {
                  await _player.pause();
                  setState(() {
                    isPlaying = false;
                  });
                } else {
                  await _player.play(
                    AssetSource(widget.music.path),
                  );
                  setState(() {
                    isPlaying = true;
                  });
                }
              },
              child: Text(isPlaying ? 'Pause' : 'Play'),
            ),
          ],
        ),
      ),
    );
  }
}

