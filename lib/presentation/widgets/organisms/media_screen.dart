import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MiniYoutubePlayer extends StatefulWidget {
  final String videoUrl;
  final StandardRateo rateo;
  final double widthVideo;

  const MiniYoutubePlayer(
      {super.key,
      required this.videoUrl,
      required this.rateo,
      required this.widthVideo});

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

  void _toggleFullScreen() {
    if (_controller.value.isFullScreen) {
      _controller.toggleFullScreenMode();
    } else {
      _controller.toggleFullScreenMode();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      // aspectRatio: widget.rateo.aspectRatio,
      width: widget.widthVideo,
      actionsPadding: const EdgeInsets.all(0),
      bottomActions: [
        IconButton(
            onPressed: () {
              _toggleFullScreen();
            },
            icon: const Icon(
              Icons.fullscreen,
              color: Colors.white,
            ))
      ],
    );
  }
}