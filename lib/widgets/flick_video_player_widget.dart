import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FlickVideoPlayerWidget extends StatefulWidget {
  const FlickVideoPlayerWidget({super.key, required this.video});
  final String video;

  @override
  State<FlickVideoPlayerWidget> createState() => _FlickVideoPlayerWidgetState();
}

class _FlickVideoPlayerWidgetState extends State<FlickVideoPlayerWidget> {
  late FlickManager flickManager;
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      ),
      httpHeaders: {
        'Content-Range': 'bytes 0-158008373/158008374',
      },
    );
    flickManager = FlickManager(
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlickVideoPlayer(flickManager: flickManager);
  }
}
