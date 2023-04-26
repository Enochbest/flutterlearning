import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
class VideoPlayPage extends StatefulWidget {
  const VideoPlayPage({Key? key}) : super(key: key);

  @override
  State<VideoPlayPage> createState() => _VideoPlayPageState();
}

class _VideoPlayPageState extends State<VideoPlayPage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initVideo();
  }
  _initVideo() async{
    videoPlayerController = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('视频播放插件'),),
      body: Center(
        child: SizedBox(
          child: AspectRatio(
            aspectRatio: 3/2,
            child: Chewie(
              controller: chewieController,
            ),
          ),
        )
      ),
    );
  }
}
