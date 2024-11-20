


import 'package:flutter/material.dart';

import 'widgets/video_player_view_body.dart';

class VideoPlayerView extends StatelessWidget {
  const VideoPlayerView({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: VideoPlayerViewBody(url: url,),
        ),
      ),
    );
  }
}
