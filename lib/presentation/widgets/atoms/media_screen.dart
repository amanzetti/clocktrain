import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MiniYoutubePlayer extends StatefulWidget {
  final String videoUrl;

  const MiniYoutubePlayer({super.key, required this.videoUrl});

  @override
  _MiniYoutubePlayerState createState() => _MiniYoutubePlayerState();
}

class _MiniYoutubePlayerState extends State<MiniYoutubePlayer> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    )..addListener(() {
        if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
          setState(() {});
        }
      });
    _isPlayerReady = true;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
