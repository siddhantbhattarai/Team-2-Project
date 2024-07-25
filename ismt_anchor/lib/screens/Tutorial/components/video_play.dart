import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlay extends StatefulWidget {
  final String videolink;
  const VideoPlay({super.key, required this.videolink});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
 late YoutubePlayerController _controller ;
@override
  void initState() {
  String videoId = getYoutubeVideoId(widget.videolink);

    _controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
    ),
);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,
    progressIndicatorColor: primaryColor,
    progressColors: const ProgressBarColors(
      playedColor: primaryColor,
      handleColor: primaryColor,
    ),
    onReady: () {
      // _controller.addListener(listener);
    },
);
  }
 
}