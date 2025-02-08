import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutopPlayer extends StatefulWidget {
  const YoutopPlayer({super.key});

  @override
  State<YoutopPlayer> createState() => _YoutopPlayerState();
}

class _YoutopPlayerState extends State<YoutopPlayer> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'IhgxZ8tmBxU',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(controller: _controller),
        builder: (p0, p1) => p1,
      ),
    );
  }
}
