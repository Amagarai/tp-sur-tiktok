//ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScroll extends StatefulWidget {
  const VideoScroll({Key? key}) : super(key: key);

  @override
  _VideoScrollState createState() => _VideoScrollState();
}

class _VideoScrollState extends State<VideoScroll> {

  late VideoPlayerController _MyController;
  @override
  void initState(){
    super.initState();
    _MyController = VideoPlayerController.asset(
        'assets/video/video1.mov')
      ..initialize().then((_) {
        _MyController.play();
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_MyController);
  }
}
