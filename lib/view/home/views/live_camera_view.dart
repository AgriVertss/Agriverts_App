import 'package:agriverts/core/constants/mux_constants.dart';
import 'package:agriverts/product/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveCameraView extends StatefulWidget {
  const LiveCameraView({Key? key}) : super(key: key);

  @override
  State<LiveCameraView> createState() => _LiveCameraViewState();
}

class _LiveCameraViewState extends State<LiveCameraView> with MuxConstant{
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://stream.mux.com/ZBFnVduthN7UqVTeelBeS700Mu8wFX5O9NEMIRvLgJ6s.m3u8')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: _controller.value.isBuffering
                  ? CircularProgressIndicator()
                  : VideoPlayer(_controller),
            )
          : Center(
              child: ScaffoldLoadingIndicator(),
            ),
    );
  }

  @override
  void dispose() {
  _controller.dispose();
    super.dispose();
  }
}
