import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoURL;
  const VideoPlayerScreen({super.key, required this.videoURL});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(widget.videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // YoutubePlayerBuilder(
            // builder: (context, player) => VideoPlayerScreen(),
            // player:
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.red,
                  bufferedColor: Colors.red,
                  backgroundColor: Colors.transparent),
              aspectRatio: 16 / 9,
            ),
            //),
          ],
        ),
      ),
    );
  }
}
