import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';

class PlayVideoFromNetwork extends StatefulWidget {
  final String url;
  final PodPlayerController? controller;
  const PlayVideoFromNetwork({Key? key, required this.url, this.controller}) : super(key: key);

  @override
  State<PlayVideoFromNetwork> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<PlayVideoFromNetwork> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = widget.controller ?? PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          widget.url
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PodVideoPlayer(controller: controller,
      ),
    );
  }
}